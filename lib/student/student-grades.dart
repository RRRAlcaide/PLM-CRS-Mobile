import 'package:flutter/material.dart';
import 'package:flutter_crs/student/student-homepage.dart';
import 'package:flutter_crs/student/student-widgets.dart';

class StudentGrade extends StatelessWidget {
  const StudentGrade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentGradeDropdown(),
    );
  }
}

class StudentGradeDropdown extends StatefulWidget {
  const StudentGradeDropdown({Key? key}) : super(key: key);

  @override
  _StudentGradeDropdownState createState() => _StudentGradeDropdownState();
}

class _StudentGradeDropdownState extends State<StudentGradeDropdown> {
  static const darkMaroon = Color(0xFF8B0000);


  String dropdownvalue = '1st 2023-2024   ';
  var items = [
    '1st 2023-2024   ',
    '2nd 2022-2023   ',
    '1st 2022-2023   ',
    '2nd 2021-2022   ',
    '1st 2021-2022   ',
    '2nd 2020-2021   ',
    '1st 2020-2021   ',
  ];

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
            padding: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
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
                      '  Grades  ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  const SizedBox(height: 8),

                  //STUDENT INFORMATION
                  const Text(
                    'Student Information',
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                      color: darkMaroon,
                    ),
                  ),
                  const SizedBox(height: 8),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Student ID',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey),
                              ),
                              SizedBox(width: 50),
                              Text(
                                '2020-123456',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Student Name',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey),
                              ),
                              SizedBox(width: 30),
                              Text(
                                'JUAN PEPITO DELA CRUZ',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Graduate School',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey),
                              ),
                              SizedBox(width: 20),
                              Flexible(
                                child: Text(
                                  'COLLEGE OF ENGINEERING - GRADUATE PROGRAM',
                                  softWrap: true,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Program',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey),
                              ),
                              SizedBox(width: 58),
                              Text(
                                'MASTER OF INFORMATION TECHNOLOGY',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current AY',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey),
                              ),
                              SizedBox(width: 48),
                              Text(
                                '2023-2024, 1st Trimester',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  //SEMESTER DROPDOWN
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //PRINT BUTTON
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Printing...'),
                                  ),
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(
                                  Icons.local_print_shop_outlined,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),

                          //DOWNLOAD BUTTON
                          Container(
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
                                child: Icon(
                                  Icons.download_outlined,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  //TABLE
                  Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    defaultColumnWidth: const FlexColumnWidth(),
                    border: TableBorder.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 0.5,
                    ),
                    children: const [
                      TableRow(
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide.none,
                                left: BorderSide.none,
                                right: BorderSide.none),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5)),
                            color: darkMaroon,
                          ),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Subject Code - Section',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Subject Title',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Credits',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Grade',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Remarks',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide.none,
                                left: BorderSide.none,
                                right: BorderSide.none),
                            color: Colors.transparent,
                          ),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'GEIT 838 - 1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Network Design and Management',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'PASSED',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide.none,
                                left: BorderSide.none,
                                right: BorderSide.none),
                            color: Colors.transparent,
                          ),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'GEIT 838 - 1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Network Design and Management',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'PASSED',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide.none,
                                left: BorderSide.none,
                                right: BorderSide.none),
                            color: Colors.transparent,
                          ),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'GEIT 838 - 1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Network Design and Management',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'PASSED',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide.none,
                                left: BorderSide.none,
                                right: BorderSide.none),
                            color: Colors.transparent,
                          ),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'GEIT 838 - 1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Network Design and Management',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'PASSED',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide.none,
                                left: BorderSide.none,
                                right: BorderSide.none),
                            color: Colors.transparent,
                          ),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'GEIT 838 - 1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Network Design and Management',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'PASSED',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide.none,
                                left: BorderSide.none,
                                right: BorderSide.none),
                            color: Colors.transparent,
                          ),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'GEIT 838 - 1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Network Design and Management',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'PASSED',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                          ]),
                    ],
                  ),
                  const SizedBox(height: 8),

                  //TABLE NAVIGATOR
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back_outlined,
                          size: 11,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 2),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                          child: const Text('  1  ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                  fontFamily: 'Open Sans'))),
                      const SizedBox(width: 2),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_rounded,
                          size: 11,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Page 1 of 12',
                        style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Open Sans',
                            color: Colors.grey),
                      )
                    ],
                  ),
                ]),
          )),
        ]));
  }
}
