import 'package:flutter/material.dart';

import '../Colors/Colors.dart';
import '../Resusables/textFieldColor.dart';
import '../Welcome Screens/WelcomePage.dart';

class AddPatientPage extends StatefulWidget {
  const AddPatientPage({Key? key}) : super(key: key);

  @override
  State<AddPatientPage> createState() => _AddPatientPageState();
}

class _AddPatientPageState extends State<AddPatientPage> {

  TextEditingController nameTextController = TextEditingController();
  TextEditingController ageTextController = TextEditingController();
  TextEditingController phoneTextController = TextEditingController();
  TextEditingController diseaseTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      appBar: AppBar(
        toolbarHeight: height * .085,
        backgroundColor: theme,
        title: const Text(
          'Add Patient',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: Center(
              child:
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: height * .04,
                ),
                CircleAvatar(
                  radius: width * .25,
                  backgroundColor: theme,
                  child: Text("Add Photo",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: .5),),
                ),
                const SizedBox(
                  height: 25,
                ),textFieldColor(false, false, null, "Name", nameTextController),
                SizedBox(height: height * .03),
                textFieldColor(false, true,null, "Age", ageTextController),
                SizedBox(height: height * .03),
                textFieldColor(false, true, null, "Phone Number", phoneTextController),
                SizedBox(height: height * .01),
                textFieldColor(false, false,null, "Disease", diseaseTextController),
                SizedBox(height: height * .04),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme,
                        fixedSize: Size(width*.84, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: const Text(
                      "Confirm",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ])),
        )
    );
  }
}