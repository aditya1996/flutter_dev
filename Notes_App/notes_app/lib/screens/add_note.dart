import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key key}) : super(key: key);

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Column(
          children: const [
            SizedBox(
              //Use of SizedBox
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                // border: InputBorder.none,
                hintText: "Note Title",
              ),
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              //Use of SizedBox
              height: 30,
            ),
            Expanded(
                child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                // border: InputBorder.none,
                hintText: "Your Note",
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 100.0,
        width: 150.0,
        child: FittedBox(
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text("Save Note"),
            icon: const Icon(Icons.save),
          ),
        ),
      ),
    );
  }
}
