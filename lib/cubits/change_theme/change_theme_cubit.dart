import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeThemeCubit extends Cubit<Brightness> {
  bool shared = true;
  ChangeThemeCubit()
      : super(
          Brightness.light,
        );

  toggleTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (state == Brightness.light) {
      emit(
        Brightness.dark,
      );
      prefs.getBool("");
    } else {
      emit(
        Brightness.light,
      );
    }
  }
}
