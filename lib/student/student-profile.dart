import 'package:flutter/material.dart';
import 'package:flutter_crs/changepass.dart';
import 'package:flutter_crs/student/student-homepage.dart';
import 'package:flutter_crs/student/student-widgets.dart';

class StudentProfile extends StatelessWidget {
  static const darkMaroon = Color(0xFF8B0000);
  static const lightRed = Color(0x0fff0500);

  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const StudentNav(),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Image.network(
                  'https://plm.edu.ph/images/Seal/PLM_Seal_BOR-approved_2014.png'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StudentPage()));
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              height: 4.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  darkMaroon,
                  Colors.red,
                  Colors.purple,
                  Colors.indigo,
                  Colors.blue,
                  Colors.green,
                  Colors.yellow
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )),
            ),
          ),
        ),
        body: Stack(fit: StackFit.expand, children: [
          SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //PAGE HEADER
                      Container(
                        decoration: BoxDecoration(
                            color: darkMaroon,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Text(
                          '  View Profile  ',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                      const SizedBox(height: 30),

                      //PROFILE PICTURE
                      const Center(
                        child: Icon(Icons.account_circle,
                            color: darkMaroon, size: 80),
                      ),
                      const SizedBox(height: 10),

                      //NAME AND STUD NO.
                      const Center(
                        child: Text(
                          'DELA CRUZ, JUAN PEPITO',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: darkMaroon,
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Student ID: 2020-18564',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Open Sans',
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      //SECTION HEADER
                      const Text(
                        'Student Details',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          color: darkMaroon,
                        ),
                      ),
                      const SizedBox(height: 8),

                      //CONTENTS
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.5),
                            child: Row(children: [
                              Text(
                                'Program:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 40),
                              Text(
                                'BACHELOR OF SCIENCE IN COMPUTER SCIENCE',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.5),
                            child: Row(children: [
                              Text(
                                'Current AY:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 30),
                              Text(
                                'AY 2023-2024, 1ST SEMESTER',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.5),
                            child: Row(children: [
                              Text(
                                'Email:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 55),
                              Text(
                                'jpdelacruz@plm.edu.ph',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.5),
                            child: Row(children: [
                              Text(
                                'Mobile:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 50),
                              Text(
                                '+639876543210',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.5),
                            child: Row(children: [
                              Text(
                                'Address:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 43),
                              Text(
                                '123 Ibarra Street, Metro Manila',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.5),
                            child: Row(children: [
                              Text(
                                'Birthdate:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 40),
                              Text(
                                'December 30, 1987',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.5),
                            child: Row(children: [
                              Text(
                                'Password:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 36),
                              Text(
                                '*******',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),

                      //CHANGE PASSWORD BUTTON
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(135.0, 20.0),
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                child: const Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    'Change Password',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChangePass()));
                                },
                              ),
                            )),
                      ),
                      const SizedBox(height: 20),

                      //SECTION HEADER 2
                      const Text(
                        'Account Status',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          color: darkMaroon,
                        ),
                      ),
                      const SizedBox(height: 8),

                      //HIGHLIGHT
                      Container(
                        height: 15,
                        width: 300,
                        decoration: BoxDecoration(
                            color: lightRed,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Text(
                              'Payment is covered by',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: darkMaroon),
                            ),
                            Text(
                              'CHED Unifast (RA 10931)',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.bold,
                                  color: darkMaroon),
                            ),
                            SizedBox(width: 30),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),

                      //CONTENTS
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(children: [
                              Text(
                                'Payment For:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 80),
                              Text(
                                'School Year 2023-2024 1st Semester',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.blue,
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(children: [
                              Text(
                                'Payment Type/Term:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 45),
                              Text(
                                'School Year 2023-2024 1st Semester',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(children: [
                              Text(
                                'Total  Amount (Current YR):',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 13),
                              Text(
                                'Php 17,956.00',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(children: [
                              Text(
                                'Overall Balance:',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Open Sans',
                                  color: darkMaroon,
                                ),
                              ),
                              SizedBox(width: 38),
                              Text(
                                'Php 0.00',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ])),
          )
        ]));
  }
}
