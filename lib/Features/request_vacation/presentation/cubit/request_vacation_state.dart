part of 'request_vacation_cubit.dart';

@immutable
abstract class RequestVacationState {}

class RequestVacationInitial extends RequestVacationState {}

class PickFileState extends RequestVacationState {
  final String fileName;

  PickFileState(this.fileName);
}

class PickImageState extends RequestVacationState {
  final File imagePath;

  PickImageState(this.imagePath);
}
