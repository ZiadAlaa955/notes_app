import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/Utils/app_routes.dart';
import 'package:notes_app/Utils/helper.dart';
import 'package:notes_app/simple_bloc_observer.dart';

void main() async {
  await initHive();

  Bloc.observer = SimpleBlocObserver();

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: appThemeData(),
        routerConfig: router,
      ),
    );
  }
}
