import 'package:flutter/material.dart';
import 'package:flutter_crs/faculty/faculty-homepage.dart';
import 'package:flutter_crs/faculty/faculty-widgets.dart';

class FacultyGrade2 extends StatelessWidget {
  const FacultyGrade2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Grade2Dropdown(),
    );
  }
}

class Grade2Dropdown extends StatefulWidget {
  const Grade2Dropdown({Key? key}) : super(key: key);

  @override
  _Grade2DropdownState createState() => _Grade2DropdownState();
}

class _Grade2DropdownState extends State<Grade2Dropdown> {
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

                  //REMINDER SECTION
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 160,
                        height: 170,
                        decoration: BoxDecoration(
                          color: lightRed,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(1),
                          child: ListTile(
                            leading: Icon(
                              Icons.warning_amber_rounded,
                              size: 20,
                              color: darkMaroon,
                            ),
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Reminders',
                                  style: TextStyle(
                                      color: darkMaroon,
                                      fontSize: 8,
                                      fontFamily: 'Open Sans'),
                                ),
                                Text(
                                  '\n1.) Please take note that once you click the “Submit Grades” button, you can no longer change the grades online.',
                                  style: TextStyle(
                                    height: 1,
                                    color: darkMaroon,
                                    fontSize: 7,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                                Text(
                                  '\n2.) Request for grade changes can only be done through a letter of request addressed to the _______',
                                  style: TextStyle(
                                    height: 1,
                                    color: darkMaroon,
                                    fontSize: 7,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                                Text(
                                  '\n3.) All “Final grade” fields should be filled up before clicking the “Submit Grades” button.',
                                  style: TextStyle(
                                    height: 1,
                                    color: darkMaroon,
                                    fontSize: 7,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 160,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Acceptable Grades',
                                  style: TextStyle(
                                    color: darkMaroon,
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '1.0 - 1.00, 1.5 - 1.50, 2.0 - 2.00, 2.5 - 2.50, 3.0 - 3.00, 4.0 - 4.00, 5.0 - 5.00, 1 - 1.00, 2 - 2.00, 3 - 3.00',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                                Text(
                                  'INC - Incomplete, DO - Dropped Officially, DU - Dropped Unofficially, PASSED - Passed, DC - Dropped die to Covid-19',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),

                  //REPORT OF GRADES SECTION
                  const Text(
                    'Report of Grades',
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                      color: darkMaroon,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Subject Title',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'CS Elective 2 (Lec)',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Open Sans',
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Units',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 33),
                      Text(
                        '2',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Open Sans',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Course Code',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'CSC 0413-2',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Open Sans',
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 55),
                      Text(
                        'Term/AY',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        '1st, 2023-2024',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Open Sans',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

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
                    ],
                  ),

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
                                    'Count',
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
                                    'Student No.',
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
                                    '    Student Name    ',
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
                                    'Program',
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
                                    'Year',
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
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    'Final Grade',
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
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                                      '2020-12345',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'Juan Dela Cruz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'BSCS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.grey),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '1.00',
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                              size: 10)
                                        ],
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey),
                                    ),
                                    child: const Text(
                                      ' ',
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                                      '2020-12345',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'Juan Dela Cruz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'BSCS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.grey),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '1.00',
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                              size: 10)
                                        ],
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey),
                                    ),
                                    child: const Text(
                                      ' ',
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                                      '2020-12345',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'Juan Dela Cruz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'BSCS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.grey),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '1.00',
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                              size: 10)
                                        ],
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey),
                                    ),
                                    child: const Text(
                                      ' ',
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                                      '2020-12345',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'Juan Dela Cruz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'BSCS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.grey),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '1.00',
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                              size: 10)
                                        ],
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey),
                                    ),
                                    child: const Text(
                                      ' ',
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                                      '2020-12345',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'Juan Dela Cruz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'BSCS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.grey),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '1.00',
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                              size: 10)
                                        ],
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey),
                                    ),
                                    child: const Text(
                                      ' ',
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                                      '2020-12345',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'Juan Dela Cruz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'BSCS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.grey),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '1.00',
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                              size: 10)
                                        ],
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey),
                                    ),
                                    child: const Text(
                                      ' ',
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                                      '2020-12345',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'Juan Dela Cruz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'BSCS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.grey),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '1.00',
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                              size: 10)
                                        ],
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey),
                                    ),
                                    child: const Text(
                                      ' ',
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 6,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                                      '2020-12345',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'Juan Dela Cruz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      'BSCS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.grey),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '1.00',
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(Icons.keyboard_arrow_down,
                                              size: 10)
                                        ],
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey),
                                    ),
                                    child: const Text(
                                      ' ',
                                      style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
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
