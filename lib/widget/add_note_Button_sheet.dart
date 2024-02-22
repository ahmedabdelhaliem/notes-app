import 'package:flutter/material.dart';
import 'package:untitled8/widget/custom_button.dart';
import 'package:untitled8/widget/custom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(children: [
          CustomTextField(
            hint: 'title',
            maxLines: 1,
          ),
          SizedBox(
            height: 5,
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton()
        ]),
      ),
    );
  }
}
