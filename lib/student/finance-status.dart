import 'package:flutter/material.dart';
import 'package:flutter_crs/student/student-homepage.dart';
import 'package:flutter_crs/student/student-widgets.dart';

class FinanceStatus extends StatelessWidget {
  static const darkMaroon = Color(0xFF8B0000);
  static const lightRed = Color(0x0fff0500);
  static const lightGrey = Color(0x0f666666);

  const FinanceStatus({super.key});

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
                      '  Cashier  ',
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
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  //ASSESSMENTS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Student Assessements',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          color: darkMaroon,
                        ),
                      ),
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
                  const SizedBox(height: 8),

                  //PAYMENT INFORMATION
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Year/Term: ',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 40),
                              Text(
                                '2023 | 1st Trimester',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Status',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 43),
                              Text(
                                'Partial Paid',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Terms of Payment: ',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Partial Payment',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: 30),
                              Text(
                                'Assessment',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 23),
                              Text(
                                'Active Assessment',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  //TRANSCRIPT INFORMATION
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tuition Fee (Per Unit): ',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 6),
                              Text(
                                '₱1,271.00',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 50),
                              Text(
                                'Unit/s',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 43),
                              Text(
                                '6.00 unit/s',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Miscellaneous Fees: ',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Open Sans',
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '   Guidance Fee: ',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 25),
                                Text(
                                  '₱1247.50',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                          SizedBox(height: 5),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '   Medical/Dental Fee: ',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '₱330.50',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                          SizedBox(height: 5),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '   Registration Fee: ',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Text(
                                  '₱396.00',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                          SizedBox(height: 5),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '   Publication Fee: ',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 19),
                                Text(
                                  '₱825.00',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '   Library Fee: ',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 35),
                              Text(
                                '₱1,650.00',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Other Fees: ',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Open Sans',
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '   Development Fund: ',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '₱900.00',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                          SizedBox(height: 5),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Amount: ',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 23),
                                Text(
                                  '₱11,974.50',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Paid Amount: ',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 26),
                                Text(
                                  '₱2,500.00',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Overall Paid: ',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '₱23,730.00',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  //TRANSCRIPT SUMMARY
                  Container(
                    decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tuition Fee (Units): ',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '₱7,626.00',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    color: darkMaroon,
                                  ),
                                ),
                              ]),
                          SizedBox(height: 12),
                          Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                          SizedBox(height: 12),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Overall Balance: ',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 45),
                                Text(
                                  '₱6,764.10',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                          Text(
                            'Previous Balance(existing) \n + Current balance',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 6,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amount to be Paid: ',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  'For 2023 | 1st Trimester',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    color: darkMaroon,
                                  ),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amount to be Paid: ',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    color: lightGrey,
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '₱7,626.00',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}
