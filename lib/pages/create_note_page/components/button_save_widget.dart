import 'package:flutter/material.dart';

class ButtonSaveWidget extends StatelessWidget {
  const ButtonSaveWidget({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 250,
          child: ElevatedButton(
            onPressed: onPressed,
            child: const Text('Save'),
          ),
        ),
      ],
    );
  }
}
