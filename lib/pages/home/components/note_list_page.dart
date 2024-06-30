import 'package:flutter/material.dart';

class NoteListPage extends StatelessWidget {
  const NoteListPage({
    super.key,
    required this.description,
    required this.onTap,
  });

  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(title: Text(description), onTap: onTap),
    );
  }
}
