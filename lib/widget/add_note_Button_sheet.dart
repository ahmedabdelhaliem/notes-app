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
        child: AddFormNote(),
      ),
    );
  }
}

class AddFormNote extends StatefulWidget {
  const AddFormNote({
    super.key,
  });

  @override
  State<AddFormNote> createState() => _AddFormNoteState();
}

class _AddFormNoteState extends State<AddFormNote> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(children: [
        CustomTextField(
          onSaved: (value) {
            title = value;
          },
          hint: 'title',
          maxLines: 1,
        ),
        const SizedBox(
          height: 5,
        ),
        CustomTextField(
          onSaved: (value) {
            subTitle = value;
          },
          hint: 'content',
          maxLines: 5,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
        )
      ]),
    );
  }
}
