import 'package:flutter/material.dart';
import 'package:flutter_crs/faculty/faculty-grade2.dart';
import 'package:flutter_crs/faculty/faculty-homepage.dart';
import 'package:flutter_crs/faculty/faculty-widgets.dart';

class FacultyGrade1 extends StatelessWidget {
  const FacultyGrade1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Grade1Dropdown(),
    );
  }
}

class Grade1Dropdown extends StatefulWidget {
  const Grade1Dropdown({Key? key}) : super(key: key);

  @override
  _Grade1DropdownState createState() => _Grade1DropdownState();
}

class _Grade1DropdownState extends State<Grade1Dropdown> {
  static const darkMaroon = Color(0xFF8B0000);
  static const lightRed = Color(0x0fff0500);

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
                      '  Grades  ',
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: lightRed,
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: const ListTile(
                                    leading: Icon(Icons.warning_amber_rounded,
                                        size: 20, color: darkMaroon),
                                    title: Text(
                                      'For incomplete subject please contact ICTO. Subjects in red color means encoding expired!',
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
                    children: [
                      const TableRow(
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
                                    'Subject Code',
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
                                    'Section',
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
                                    'Schedule/Room',
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
                                    'Instructor',
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
                                    'Actions',
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
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const FacultyGrade2()));
                                    },
                                    child: const Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2(Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'Jamillah S. Guialil',
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
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: Colors.blue,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text('Printing...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.local_print_shop_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: darkMaroon,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content:
                                                      Text('Downloading...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.download_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const FacultyGrade2()));
                                    },
                                    child: const Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2(Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'Jamillah S. Guialil',
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
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: Colors.blue,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text('Printing...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.local_print_shop_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: darkMaroon,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content:
                                                      Text('Downloading...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.download_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const FacultyGrade2()));
                                    },
                                    child: const Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2(Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'Jamillah S. Guialil',
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
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: Colors.blue,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text('Printing...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.local_print_shop_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: darkMaroon,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content:
                                                      Text('Downloading...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.download_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const FacultyGrade2()));
                                    },
                                    child: const Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2(Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'Jamillah S. Guialil',
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
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: Colors.blue,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text('Printing...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.local_print_shop_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: darkMaroon,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content:
                                                      Text('Downloading...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.download_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const FacultyGrade2()));
                                    },
                                    child: const Text(
                                      'CSC 0413',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'CS Elective 2(Lec)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    )),
                              ),
                            ),
                            const Expanded(
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Text(
                                      'Jamillah S. Guialil',
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
                                padding: const EdgeInsets.all(5),
                                child: TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: Colors.blue,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text('Printing...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.local_print_shop_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: darkMaroon,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content:
                                                      Text('Downloading...'),
                                                ),
                                              );
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Icon(
                                                Icons.download_outlined,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
