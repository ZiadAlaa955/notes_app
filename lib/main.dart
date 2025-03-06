import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Utils/app_routes.dart';
import 'package:notes_app/Utils/constants.dart';
import 'package:notes_app/Utils/theme.dart';
import 'package:notes_app/simple_bloc_observer.dart';

void main() async {
  //Hive initialization
  await Hive.initFlutter();
  Hive.registerAdapter<NoteModel>(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);

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
