import 'package:flutter/material.dart';
import 'package:flutter_crs/faculty/class-assignment.dart';
import 'package:flutter_crs/faculty/faculty-grade1.dart';
import 'package:flutter_crs/faculty/faculty-profile.dart';
import 'package:flutter_crs/faculty/teaching-assignment.dart';
import 'package:flutter_crs/main.dart';
import 'faculty-homepage.dart';

class FacultyNav extends StatelessWidget {
  static const darkMaroon = Color(0xFF8B0000);

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
            leading: const Icon(Icons.home, color: darkMaroon),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FacultyPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person, color: darkMaroon),
            title: const Text('View Profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FacultyProfile()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.school, color: darkMaroon),
            title: const Text('Class Assignment'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ClassAssignment()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.content_paste, color: darkMaroon),
            title: const Text('Teaching Assignment'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TeachingAssignment()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.star, color: darkMaroon),
            title: const Text('View Grades'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FacultyGrade1()));
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
