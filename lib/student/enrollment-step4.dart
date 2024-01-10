import 'package:flutter/material.dart';
import 'package:flutter_crs/student/student-homepage.dart';
import 'package:flutter_crs/student/student-widgets.dart';

class EnrollStep4 extends StatelessWidget {
  static const darkMaroon = Color(0xFF8B0000);
  static const lightRed = Color(0xFFF0500);
  static const lightGrey = Color(0xF666666);

  const EnrollStep4({super.key});

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
        //Background Image
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.75),
            BlendMode.srcOver,
          ),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://web1.plm.edu.ph/crs/images/watermark_plm.png'),
              fit: BoxFit.contain,
            )),
          ),
        ),

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
                      'STEP 4',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: darkMaroon),
                    ),
                    Text(
                      'Officially Enrolled!',
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
                      decoration: const BoxDecoration(
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
                          '4',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),

                const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'You are officially enrolled! You will be added your subject\'s MS Teams',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          color: darkMaroon,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'The start of classes will be on August 29, 2023',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: darkMaroon,
                        ),
                      ),
                    ]),
                const SizedBox(height: 280),

                Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StudentPage()));
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
                              'Home  ',
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
          ),
        ),
      ]),
    );
  }
}
