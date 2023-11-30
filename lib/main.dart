import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/change_theme/change_theme_cubit.dart';
import 'package:notes_app/theme/app_theme.dart';
import 'package:notes_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeThemeCubit(),
      child: BlocBuilder<ChangeThemeCubit, Brightness>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: appTheme(state, context),
            home: HomeView(
              themeData: state,
            ),
          );
        },
      ),
    );
  }
}

