// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:untitled8/model/note_model.dart';

part 'notescubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotescubitInitial());
}
