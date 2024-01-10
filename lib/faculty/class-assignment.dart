import 'package:flutter/material.dart';
import 'package:flutter_crs/faculty/faculty-homepage.dart';
import 'package:flutter_crs/faculty/faculty-widgets.dart';

class ClassAssignment extends StatelessWidget {
  const ClassAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClassDropdown(),
    );
  }
}

class ClassDropdown extends StatefulWidget {
  const ClassDropdown({Key? key}) : super(key: key);

  @override
  _ClassDropdownState createState() => _ClassDropdownState();
}

class _ClassDropdownState extends State<ClassDropdown> {
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //PAGE HEADER
              Container(
                decoration: BoxDecoration(
                    color: darkMaroon,
                    borderRadius: BorderRadius.circular(5.0)),
                child: const Text(
                  '  Class Assignment  ',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Montserrat'),
                ),
              ),
              const SizedBox(height: 20),

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
                                'Class ID',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
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
                                'Subject Code and Section',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
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
                                'Class ID',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Course Title',
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
                                'Class Schedule',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
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
                                  fontSize: 10,
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
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                '26339',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CSC 04131.1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CS Elective 2 (Lec)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'Course Title',
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
                                'W 6:00pm-8:00pm F2F - GV 306',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                  fontSize: 9,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                '26339',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CSC 04131.1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CS Elective 2 (Lec)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'Course Title',
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
                                'W 6:00pm-8:00pm F2F - GV 306',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                  fontSize: 9,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                '26339',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CSC 04131.1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CS Elective 2 (Lec)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'Course Title',
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
                                'W 6:00pm-8:00pm F2F - GV 306',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                  fontSize: 9,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                '26339',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CSC 04131.1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CS Elective 2 (Lec)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'Course Title',
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
                                'W 6:00pm-8:00pm F2F - GV 306',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                  fontSize: 9,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                '26339',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CSC 04131.1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CS Elective 2 (Lec)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'Course Title',
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
                                'W 6:00pm-8:00pm F2F - GV 306',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                  fontSize: 9,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                '26339',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CSC 04131.1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CS Elective 2 (Lec)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'Course Title',
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
                                'W 6:00pm-8:00pm F2F - GV 306',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                  fontSize: 9,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                '26339',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CSC 04131.1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CS Elective 2 (Lec)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'Course Title',
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
                                'W 6:00pm-8:00pm F2F - GV 306',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                  fontSize: 9,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                '26339',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CSC 04131.1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                'CS Elective 2 (Lec)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'Course Title',
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
                                'W 6:00pm-8:00pm F2F - GV 306',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 9,
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
                                  fontSize: 9,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        color: darkMaroon,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                '  ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
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
                                '  ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
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
                                '  ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
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
                                'Total No. of Credits',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 10,
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
                                '33',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ]),
                ],
              )
            ]),
          )),
        ]));
  }
}
