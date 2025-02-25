import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/Widgets/add_note_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          context: context,
          builder: (context) => const AddNoteBottomSheet(),
        );
      },
      shape: const CircleBorder(),
      backgroundColor: kPrimaryColor,
      child: const Icon(Icons.add, color: Colors.black),
    );
  }
}
