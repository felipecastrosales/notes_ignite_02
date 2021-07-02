import 'package:flutter/material.dart';

import 'components/button_save_widget.dart';
import 'components/input_field_widget.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  var description = '';
  var textController = TextEditingController();
  var isEdit = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        description = ModalRoute.of(context)!.settings.arguments as String;
        textController.text = description;
        setState(() {
          isEdit = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? 'Edit Note' : 'Create Note'),
        centerTitle: true,
        actions: [
          if (isEdit)
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => Navigator.pop(context, description),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputFieldWidget(
              textController: textController,
              onChanged: (value) {
                setState(() => description = value);
              },
            ),
            SizedBox(height: 32),
            if (description.isNotEmpty) 
              ButtonSaveWidget(
                onPressed: () => Navigator.pop(context, description),
              ),
          ],
        ),
      ),
    );
  }
}
