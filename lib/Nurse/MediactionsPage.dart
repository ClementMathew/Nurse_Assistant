import 'package:flutter/material.dart';

import '../Colors/Colors.dart';
import '../Welcome Screens/WelcomePage.dart';

class MedicationsPage extends StatefulWidget {
  const MedicationsPage({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MedicationsPage> {
  List<String> displayTextList = [];

  void _addString(String input) {
    setState(() {
      displayTextList.add(input);
    });
  }

  Future<void> _showAddTextDialog() async {
    String inputText = '';

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Medications',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: TextField(
            onChanged: (input) {
              inputText = input;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme,
                ),
                onPressed: () {
                  _addString(inputText);
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      appBar: AppBar(
        toolbarHeight: height * .085,
        backgroundColor: theme,
        title: const Text(
          'Medications',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Padding(
            padding: EdgeInsets.only(top: 20,bottom: 10),
            child: Text("-----  Press the '+' button to add medications  -----",style: TextStyle(fontSize: 18,color: Colors.black54),),
          ),
            Expanded(
              child: ListView.builder(
                itemCount: displayTextList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), // shadow color
                          spreadRadius: 1, // how spread the shadow should be
                          blurRadius: 5, // how blurred the shadow should be
                          offset: const Offset(0, 2),)],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text('${index + 1}. ${displayTextList[index]}',
                            style: const TextStyle(color: Colors.black87,
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme,
                        fixedSize: Size(width * .65, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: const Text(
                      "Done",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _showAddTextDialog();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: theme,
                          fixedSize: Size(width * .15, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 35,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}