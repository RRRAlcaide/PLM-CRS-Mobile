import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crs/student/enrollment-step2.dart';
import 'package:flutter_crs/student/enrollment-step4.dart';
import 'package:flutter_crs/student/student-homepage.dart';
import 'package:flutter_crs/student/student-widgets.dart';

class EnrollStep3 extends StatelessWidget {
  static const darkMaroon = Color(0xFF8B0000);
  static const lightRed = Color(0x0fff0500);
  static const lightGrey = Color(0x0f666666);

  const EnrollStep3({super.key});

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
                      'STEP 3',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: darkMaroon),
                    ),
                    Text(
                      'Get EAF',
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
                        border: Border.all(width: 0.5),
                        color: darkMaroon,
                      ),
                      height: 3,
                      width: 83,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: darkMaroon,
                      ),
                      child: const Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: darkMaroon,
                      ),
                      height: 3,
                      width: 83,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: darkMaroon,
                          border: Border.all(
                            color: darkMaroon,
                            width: 0.5,
                          )),
                      child: const Center(
                        child: Text(
                          '3',
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
                const SizedBox(height: 100),

                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Download a copy of your Registration Form to proceed and be officially enrolled.',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Open Sans',
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: darkMaroon,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Downloading...'),
                              ),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.download_outlined,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                Text(
                                  '  Save a Copy',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                const SizedBox(height: 280),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
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
                              Icon(
                                Icons.arrow_back,
                                size: 16,
                                color: Colors.white,
                              ),
                              Text(
                                '  Back',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EnrollStep4()));
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
                      )
                    ],
                  ),
                ),
              ]),
        )),
      ]),
    );
  }
}
