import 'package:flutter/material.dart';

class FABWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const FABWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(child: Icon(Icons.add), onPressed: onPressed);
  }
}
