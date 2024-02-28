// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:untitled8/model/note_model.dart';
import 'package:untitled8/widget/constant.dart';

part 'notescubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotescubitInitial());
  List<NoteModel>? notes;

  fetchAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
  }
}
