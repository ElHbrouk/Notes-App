import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeThemeCubit extends Cubit<Brightness> {
  ChangeThemeCubit()
      : super(
          Brightness.light,
        );

  toggleTheme() {
    if (state == Brightness.light) {
      emit(
        Brightness.dark,
      );
 
    } else {
      emit(
        Brightness.light,
      );
      
    }
  }
}
