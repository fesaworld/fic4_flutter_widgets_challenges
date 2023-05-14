import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'basic_form/dialog_widget.dart';
import 'basic_form/form_widget.dart';
import 'basic_layout/aspect_ratio_widget.dart';
import 'basic_layout/center_widget.dart';
import 'basic_layout/column_widget.dart';
import 'basic_layout/expanded_widget.dart';
import 'basic_layout/gridview_widget.dart';
import 'basic_layout/listview_widget.dart';
import 'basic_layout/padding_widget.dart';
import 'basic_layout/row_widget.dart';
import 'basic_layout/sizebox_widget.dart';
import 'basic_layout/stack_widget.dart';
import 'basic_layout/wrap_widget.dart';
import 'basic_widget/button_widget.dart';
import 'basic_widget/circle_avatar_widget.dart';
import 'basic_widget/container_widget.dart';
import 'basic_widget/icon_widget.dart';
import 'basic_widget/image_widget.dart';
import 'basic_widget/scaffold_widget.dart';
import 'basic_widget/text_widget.dart';
import 'navigation/bottom_navbar.dart';
import 'navigation/drawer_widget.dart';
import 'navigation/navigation_pop.dart';
import 'navigation/navigation_push.dart';
import 'navigation/sliver_widget.dart';
import 'navigation/tabbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> list = const [
    BasicForm(),
    BasicLayout(),
    BasicWidget(),
    Navigation(),
  ];

  int _selectedIndex = 0;
  List<dynamic> menuItems = [
    {
      'icon': Icons.list_alt_outlined,
      'active_icon': Icons.list_alt,
      'label': 'Basic Form',
    },
    {
      'icon': Icons.layers_outlined,
      'active_icon': Icons.layers,
      'label': 'Basic Layout',
    },
    {
      'icon': Icons.widgets_outlined,
      'active_icon': Icons.widgets,
      'label': 'Basic Widget',
    },
    {
      'icon': Icons.navigation_outlined,
      'active_icon': Icons.navigation,
      'label': 'Navigation',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: list[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32.0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems.map((i) {
          return BottomNavigationBarItem(
            activeIcon: Container(
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(i['active_icon']),
                  const SizedBox(height: 5,),
                  Text(i['label'])
                ],
              ),
            ),
            icon: Container(
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(i['icon']),
                  SizedBox(height: 5,),
                  Text(i['label'])
                ],
              ),
            ),
            label: i['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class BasicForm extends StatelessWidget {
  const BasicForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const DialogWidget();
                  }));
                },
                child: const Text("Dialog Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return FormWidget();
                  }));
                },
                child: const Text("Form Widget")),
          ),
        ],
      ),
    );
  }
}

class BasicLayout extends StatelessWidget {
  const BasicLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AspectRatioWidget();
                  }));
                },
                child: const Text("Aspec Ratio Widget", maxLines:  1,)),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const CenterWidget();
                  }));
                },
                child: const Text("Center Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ColumnWidget();
                  }));
                },
                child: const Text("Column Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ExpandedWidget();
                  }));
                },
                child: const Text("Expanded Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const GridViewWidget();
                  }));
                },
                child: const Text("Gridview Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ListViewWidget();
                  }));
                },
                child: const Text("Listview Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PaddingWidget();
                  }));
                },
                child: const Text("Padding Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const RowWidget();
                  }));
                },
                child: const Text("Row Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SizedBoxWidget();
                  }));
                },
                child: const Text("Sizebox Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const StackWidget();
                  }));
                },
                child: const Text("Stack Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return WrapWidget();
                  }));
                },
                child: const Text("Wrap Widget")),
          ),
        ],
      ),
    );
  }
}

class BasicWidget extends StatelessWidget {
  const BasicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ButtonWidget();
                  }));
                },
                child: const Text("Button Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return CircleAvatarWidget();
                  }));
                },
                child: const Text("Circle Avatar Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ContainerWidget();
                  }));
                },
                child: const Text("Container Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const IconWidget();
                  }));
                },
                child: const Text("Icon Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ImageWidget();
                  }));
                },
                child: const Text("Image Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ScaffoldWidget();
                  }));
                },
                child: const Text("Scaffold Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const TextWidget();
                  }));
                },
                child: const Text("Text Widget")),
          ),
        ],
      ),
    );
  }
}

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const BottomNavbarWidget();
                  }));
                },
                child: const Text("Bottom Navbar")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const DrawerWidget();
                  }));
                },
                child: const Text("Drawer Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const NavigationPop();
                  }));
                },
                child: const Text("Navigation Pop")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const NavigationPush();
                  }));
                },
                child: const Text("Navigation Push")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SliverWidget();
                  }));
                },
                child: const Text("Sliver Widget")),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlue.shade900)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const TabbarWidget();
                  }));
                },
                child: const Text("Tabbar Widget")),
          ),
        ],
      ),
    );
  }
}