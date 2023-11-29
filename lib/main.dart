import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/change_theme/change_theme_cubit.dart';
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
            theme: ThemeData(
                brightness: state,
                listTileTheme: ListTileThemeData(
                    iconColor: Colors.black,
                    titleTextStyle: const TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                    subtitleTextStyle: TextStyle(
                      fontSize: 22,
                      color: Colors.black.withOpacity(0.6),
                    )),
                textTheme: Theme.of(context).textTheme.apply(
                      // displayColor: Colors.white,
                      fontSizeDelta: 8,
                      fontFamily: 'Poppins',
                      decorationColor: Colors.black,
                      bodyColor: Colors.black,
                    )),
            home: HomeView(
              themeData: state,
            ),
          );
        },
      ),
    );
  }
}
