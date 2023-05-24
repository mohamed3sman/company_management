import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:meta/meta.dart';

part 'request_vacation_state.dart';

class RequestVacationCubit extends Cubit<RequestVacationState> {
  RequestVacationCubit() : super(RequestVacationInitial());
  File? selectedFile;
  String? fileName;
  
  Future<void> pickFileFromDevice() async {
    emit(PickFileState());
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.any, allowMultiple: false);
    if (result != null) {
      PlatformFile file = result.files.first;
      if (file.extension == 'jpg' ||
          file.extension == 'jpeg' ||
          file.extension == 'png' ||
          file.extension == 'gif') {
       
          fileName = null;
          selectedFile = selectedFile = File(result.files.single.path!);
      
      } else if (file.extension == 'pdf') {
       
          fileName = file.name;
       
      }
    } else {}
  }
}
