import 'package:flutter/material.dart';
import 'package:insta_new/bloc/profile_bloc/bloc/insta_bloc.dart';
import 'package:insta_new/ui/Login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/media_bloc/bloc/media_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InstaBloc(),
        ),
        BlocProvider(
          create: (context) => MediaBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark(),
        // themeMode: ThemeMode.light,
        home: LoginPage(),
      ),
    );
  }
}
