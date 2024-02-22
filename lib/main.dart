import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled8/views/note_view.dart';
import 'package:untitled8/widget/constant.dart';

void main() async {
  await Hive.openBox(kNotesBox);
  await Hive.initFlutter();
  runApp(const NotesAPP());
}

class NotesAPP extends StatelessWidget {
  const NotesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
