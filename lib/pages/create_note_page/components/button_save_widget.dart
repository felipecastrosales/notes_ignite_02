import 'package:flutter/material.dart';

class ButtonSaveWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonSaveWidget({
    Key? key, 
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 250,
          child: ElevatedButton(
            onPressed: onPressed, 
            child: Text('Save'),
          ),
        ),
      ],
    );
  }
}
