import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled8/model/note_model.dart';
import 'package:untitled8/widget/constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
