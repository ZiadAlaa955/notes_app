import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_floating_action_button.dart';
import 'package:notes_app/Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
