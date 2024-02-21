import 'package:flutter/material.dart';
import 'package:untitled8/widget/custom_note_item.dart';

import 'CustomAppBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}
