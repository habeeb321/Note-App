import 'package:flutter/material.dart';

enum ActionType {
  addNote,
  editNote,
}

class ScreenAddNote extends StatelessWidget {
  final ActionType type;
  String? id;
  ScreenAddNote({super.key, required this.type, this.id});

  Widget get saveButton => TextButton.icon(
      onPressed: () {
        switch (type) {
          case ActionType.addNote:
            //add note
            break;
          case ActionType.editNote:
            //edit note
            break;
        }
      },
      icon: const Icon(Icons.save),
      label: const Text('Save'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type.name.toUpperCase()),
        actions: [
          saveButton,
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Title',
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                maxLines: 4,
                maxLength: 100,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Content',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
