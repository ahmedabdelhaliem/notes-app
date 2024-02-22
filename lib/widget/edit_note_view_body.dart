import 'package:flutter/material.dart';
import 'package:untitled8/widget/CustomAppBar.dart';
import 'package:untitled8/widget/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hint: 'title'),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
