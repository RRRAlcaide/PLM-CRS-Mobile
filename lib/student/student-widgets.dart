import 'package:flutter/material.dart';
import 'package:flutter_crs/main.dart';
import 'package:flutter_crs/student/enrollment-step1.dart';
import 'package:flutter_crs/student/finance-status.dart';
import 'package:flutter_crs/student/student-grades.dart';
import 'package:flutter_crs/student/student-homepage.dart';
import 'package:flutter_crs/student/student-profile.dart';

class StudentNav extends StatelessWidget {
  static const darkMaroon = Color(0xFF8B0000);

  const StudentNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
            height: 100,
          ),
          ListTile(
            dense: true,
            leading: const Icon(
              Icons.home,
              color: darkMaroon,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StudentPage()));
            },
          ),
          ListTile(
            dense: true,
            leading: const Icon(Icons.person, color: darkMaroon),
            title: const Text('View Profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StudentProfile()));
            },
          ),
          ListTile(
            dense: true,
            leading: const Icon(Icons.school, color: darkMaroon),
            title: const Text('Enrollment'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EnrollStep1()));
            },
          ),
          ListTile(
            dense: true,
            leading: const Icon(Icons.star, color: darkMaroon),
            title: const Text('View Grades'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudentGrade()));
            },
          ),
          ListTile(
            dense: true,
            leading: const Icon(Icons.wallet, color: darkMaroon),
            title: const Text('Finance Status'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FinanceStatus()));
            },
          ),
          const SizedBox(
            height: 100,
          ),
          const SizedBox(
            height: 1.0,
            width: 10,
            child: Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            dense: true,
            leading: const Icon(Icons.logout, color: Colors.black),
            title: const Text('Logout'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ],
      ),
    );
  }
}
