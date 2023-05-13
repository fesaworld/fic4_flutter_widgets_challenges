import 'package:fic4_flutter_widgets_challenges/tugas/basic_form/dialog_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_form/form_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/aspect_ratio_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/center_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/column_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/expanded_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/gridview_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/listview_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/padding_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/row_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/sizebox_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/stack_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/wrap_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/button_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/circle_avatar_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/container_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/icon_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/image_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/scaffold_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/text_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const DialogWidget(),
      // home: FormWidget(),
      // home: const AspectRatioWidget(),
      // home: const CenterWidget(),
      // home: const ColumnWidget(),
      // home: const ExpandedWidget(),
      // home: const GridViewWidget(),
      // home: ListViewWidget(),
      // home: const PaddingWidget(),
      // home: const RowWidget(),
      // home: const SizedBoxWidget(),
      // home: const StackWidget(),
      // home: WrapWidget(),
      // home: const ButtonWidget(),
      // home: CircleAvatarWidget(),
      // home: const ContainerWidget(),
      // home: const IconWidget(),
      // home: const ImageWidget(),
      // home: const ScaffoldWidget(),
      home: const TextWidget(),
    );
  }
}