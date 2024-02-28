part of 'notescubit_cubit.dart';

@immutable
sealed class NotesState {}

class NotescubitInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure({required this.errorMessage});
}