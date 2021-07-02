import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final ValueChanged<String> onChanged;

  const InputFieldWidget({
    Key? key, 
    required this.textController, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      maxLines: null,
      onChanged: onChanged,
      decoration: InputDecoration(labelText: 'Description'),
    );
  }
}
