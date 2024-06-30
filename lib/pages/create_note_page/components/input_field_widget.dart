import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    super.key,
    required this.textController,
    required this.onChanged,
  });

  final TextEditingController textController;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      maxLines: null,
      onChanged: onChanged,
      decoration: const InputDecoration(labelText: 'Description'),
    );
  }
}
