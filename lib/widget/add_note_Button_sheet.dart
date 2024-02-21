import 'package:flutter/material.dart';
import 'package:untitled8/widget/custom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [const CustomTextField()]),
      ),
    );
  }
}
