import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurse_assistant/Colors/Colors.dart';
import 'package:nurse_assistant/Nurse/SymptomsPage.dart';
import 'package:nurse_assistant/Resusables/addButton.dart';
import 'package:nurse_assistant/Welcome%20Screens/WelcomePage.dart';

import 'MediactionsPage.dart';
import 'medicalRecords.dart';

class PatientPage extends StatefulWidget {
  const PatientPage({Key? key}) : super(key: key);

  @override
  State<PatientPage> createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondary,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: height * .085,
          backgroundColor: theme,
          title: const Text(
            "Patient Record",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active_sharp,
                  size: 26,
                )),
            const SizedBox(
              width: 15,
            )
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: height * .22,
                  width: height * .22,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ],
                      color: Colors.white,
                      border: Border.all(width: 5, color: theme),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      )),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_a_photo,
                      size: 50,
                    ),
                    color: theme,
                  ),
                  // child: Image.asset(
                  //     ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width * .36,
                      height: height * .1,
                      child: Text("Mohammad Niyas K P",
                          style: GoogleFonts.roboto(
                            height: 1.3,
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Chip(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      label: Text(
                        "Age : 21",
                        style: GoogleFonts.ibarraRealNova(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      elevation: 3,
                      padding: const EdgeInsets.all(8),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13, top: 15),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        children: [
                          Text(
                            "Admitted date  : ",
                            style: GoogleFonts.ibarraRealNova(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                          Text(
                            " 22-05-2001",
                            style: GoogleFonts.ibarraRealNova(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                letterSpacing: .5),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Phone  : ",
                            style: GoogleFonts.ibarraRealNova(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                        ),
                        Text(
                          " +918156819141",
                          style: GoogleFonts.ibarraRealNova(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: .5),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.phone,
                              size: 29,
                            ),
                            color: theme,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 15),
                      child: Row(
                        children: [
                          Text(
                            "Disease  : ",
                            style: GoogleFonts.ibarraRealNova(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                          Text(
                            " Fever",
                            style: GoogleFonts.ibarraRealNova(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
              child: Card(
                elevation: 3,
                color: background,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          "Symptoms",
                          style: GoogleFonts.ibarraRealNova(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              decoration: TextDecoration.underline),
                        ),
                        trailing: const MyAddButton(
                          page: SymptomsPage(),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
              child: Card(
                elevation: 3,
                color: background,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          "Medications",
                          style: GoogleFonts.ibarraRealNova(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              decoration: TextDecoration.underline),
                        ),
                        trailing: MyAddButton(
                          page: MedicationsPage(),
                        ))
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const MedicalRecordsPage(),));},
                style: ElevatedButton.styleFrom(
                    backgroundColor: theme,
                    fixedSize: Size(width*.85, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: const Text(
                  "Previous Medical Records",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}