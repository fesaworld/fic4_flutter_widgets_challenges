import 'package:fic4_flutter_widgets_challenges/tugas/basic_form/dialog_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_form/form_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/aspect_ratio_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/center_widget.dart';
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
      home: const CenterWidget(),
    );
  }
}