import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:untitled8/model/note_model.dart';
import 'package:untitled8/widget/custom_button.dart';
import 'package:untitled8/widget/custom_text_feild.dart';

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
        BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {},
          builder: (context, state) {
            return CustomButton(
              isLoading: state is AddNoteLoading ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.amberAccent.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          },
        )
      ]),
    );
  }
}
