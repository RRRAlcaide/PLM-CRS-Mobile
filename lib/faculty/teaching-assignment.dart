import 'package:flutter/material.dart';
import 'package:flutter_crs/faculty/faculty-homepage.dart';
import 'package:flutter_crs/faculty/faculty-widgets.dart';

class TeachingAssignment extends StatelessWidget {
  const TeachingAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TeachingDropdown(),
    );
  }
}

class TeachingDropdown extends StatefulWidget {
  const TeachingDropdown({Key? key}) : super(key: key);

  @override
  _TeachingDropdownState createState() => _TeachingDropdownState();
}

class _TeachingDropdownState extends State<TeachingDropdown> {
  static const darkMaroon = Color(0xFF8B0000);
  static const lightRed = Color(0xFFF0500);

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
        drawer: FacultyNav(),
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
                        builder: (context) => const FacultyPage()));
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
                      '  Teaching Assignment  ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  const SizedBox(height: 20),

                  //SECTION BEFORE TABLE
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'College of Engineering and Technology',
                            style: TextStyle(
                              fontSize: 8,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'DELA CRUZ, JUAN PEPITO',
                            style: TextStyle(
                                fontSize: 8,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: darkMaroon,
                                decoration: TextDecoration.underline),
                          ),

                          //SEMESTER DROPDOWN
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
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: lightRed,
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: const ListTile(
                                    title: Text(
                                  'This College has considered you to teach the following subject(s) for the stiuplated term.',
                                  style: TextStyle(
                                    height: 1,
                                    fontSize: 7,
                                    fontFamily: 'Open Sans',
                                    color: darkMaroon,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  //TABLE
                  Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    defaultColumnWidth: const IntrinsicColumnWidth(),
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
                                    'Subject Code and Section',
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
                                    'Units',
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
                                    'Schedule',
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
                                    'No. of Students',
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
                                    'Credited Units',
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
                                    'College',
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
                                    'Type of Load',
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
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2 (Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'W 6:00pm - 8:00pm F2F - GV 306',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '38',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CET',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2 (Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'W 6:00pm - 8:00pm F2F - GV 306',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '38',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CET',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2 (Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'W 6:00pm - 8:00pm F2F - GV 306',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '38',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CET',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2 (Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'W 6:00pm - 8:00pm F2F - GV 306',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '38',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CET',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2 (Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'W 6:00pm - 8:00pm F2F - GV 306',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '38',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CET',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
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
