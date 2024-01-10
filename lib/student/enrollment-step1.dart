import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crs/student/enrollment-step2.dart';
import 'package:flutter_crs/student/student-homepage.dart';
import 'package:flutter_crs/student/student-widgets.dart';

class EnrollStep1 extends StatelessWidget {
  static const darkMaroon = Color(0xFF8B0000);
  static const lightRed = Color(0x0fff0500);
  static const lightGrey = Color(0x0f666666);

  const EnrollStep1({super.key});

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StudentPage()));
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
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //PAGE HEADER
              Container(
                decoration: BoxDecoration(
                    color: darkMaroon,
                    borderRadius: BorderRadius.circular(5.0)),
                child: const Text(
                  '  Enrollment  ',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Montserrat'),
                ),
              ),
              const SizedBox(height: 12),

              //STEP INDICATOR
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'STEP 1',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: darkMaroon),
                  ),
                  Text(
                    'Enlist Available Classes',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        color: darkMaroon),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              //PROGRESS BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: darkMaroon),
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: darkMaroon, width: 0.5)),
                    height: 3,
                    width: 83,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: darkMaroon,
                          width: 0.5,
                        )),
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: darkMaroon,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: darkMaroon, width: 0.5)),
                    height: 3,
                    width: 83,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: darkMaroon,
                          width: 0.5,
                        )),
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: darkMaroon,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: darkMaroon, width: 0.5)),
                    height: 3,
                    width: 83,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: darkMaroon,
                          width: 0.5,
                        )),
                    child: const Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                            color: darkMaroon,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              //SEARCH BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        color: Colors.transparent,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Search Subject                                 ',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              color: Colors.grey),
                        ),
                      )),
                  const SizedBox(width: 3),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              //ENLIST SUBJECT
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'GEIT 838-1',
                          style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Open Sans',
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 3),
                        const Expanded(
                          child: Text(
                            'NETWORK DESIGN AND MANAGEMENT',
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 7,
                              fontFamily: 'Open Sans',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_rounded,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Monday',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  '6:00pm - 9:00pm',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.people_alt_outlined,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  'F2F - Field',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 5),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_rounded,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Tuesday',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(height: 1),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  '4:00pm - 6:00pm',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(height: 1),
                            Row(
                              children: [
                                Icon(
                                  Icons.people_alt_outlined,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  'F2F - Field',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Enlisted'),
                                ),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Enlist',
                                style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              //EMPTY SPACE
              const SizedBox(height: 100),

              //SUBJECTS AREA
              const Text(
                'Selected Subjects',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: darkMaroon),
              ),

              //SELECT SUBJECT
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'GEIT 838-1',
                          style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Open Sans',
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 3),
                        const Expanded(
                          child: Text(
                            'NETWORK DESIGN AND MANAGEMENT',
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 7,
                              fontFamily: 'Open Sans',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_rounded,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Monday',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  '6:00pm - 9:00pm',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.people_alt_outlined,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  'F2F - Field',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 5),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_rounded,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Tuesday',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  '4:00pm - 6:00pm',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.people_alt_outlined,
                                  size: 10,
                                  color: Colors.black,
                                ),
                                Text(
                                  'F2F - Field',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: darkMaroon,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Subject Removed'),
                                ),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Remove',
                                style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              //EMPTY SPACE
              const SizedBox(height: 150),
              Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EnrollStep2()));
                    },
                    child: Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: darkMaroon,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Next  ',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 16,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        )),
      ]),
    );
  }
}
