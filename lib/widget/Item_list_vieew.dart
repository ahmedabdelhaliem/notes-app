import 'package:flutter/material.dart';
import 'package:untitled8/widget/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: NoteItem(),
      );
    });
  }
}
