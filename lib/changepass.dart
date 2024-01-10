import 'package:flutter/material.dart';
import 'package:flutter_crs/student/student-homepage.dart';
import 'package:flutter_crs/student/student-widgets.dart';

class ChangePass extends StatelessWidget {
  static const darkMaroon = Color(0xFF8B0000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: StudentNav(),
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //PAGE HEADER
                Container(
                  decoration: BoxDecoration(
                      color: darkMaroon,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: const Text(
                    '  Change Password  ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                const SizedBox(height: 30),

                //SECTION HEADER
                const Text(
                  'Change Password Utility',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold,
                    color: darkMaroon,
                  ),
                ),
                const SizedBox(height: 8),

                //CONTENT
                const Text(
                  'You can now personalize your user password to make it easier for you to remember. However, you should ensure that it is not too easy for anyone else to guess! Your password must be at least 8-20 characters long only. Making your password difficult for anyone else to crack will secure your CRS data. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Open Sans',
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),

                //CHANGE PASSWORD AREA
                Container(
                  width: 350,
                  height: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Student no.:',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                SizedBox(width: 25),
                                Text(
                                  '2020-18564',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: darkMaroon),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Current pass:',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  height: 30,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'New pass:',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                const SizedBox(width: 40),
                                Container(
                                  height: 30,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Confirm pass:',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                const SizedBox(width: 16),
                                Container(
                                  height: 30,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        //UPDATE PASSWORD BUTTON
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
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
                                        backgroundColor: darkMaroon,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                    child: const Padding(
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        'Update Password',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('Password Updated'),
                                        ),
                                      );
                                    },
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
