part of 'notescubit_cubit.dart';

@immutable
sealed class NotesState {}

class NotescubitInitial extends NotesState {}

class NotesSuccess extends NotesState {}

class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure({required this.errorMessage});
}
