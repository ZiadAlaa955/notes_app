import 'package:go_router/go_router.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/edit_note_view.dart';
import 'package:notes_app/Views/notes_view.dart';

String notesViewPath = '/';
String editNoteViewPath = '/editNoteView';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: notesViewPath,
      builder: (context, state) => const NotesView(),
    ),
    GoRoute(
      path: editNoteViewPath,
      builder: (context, state) => EditNoteView(note: state.extra as NoteModel),
    ),
  ],
);
