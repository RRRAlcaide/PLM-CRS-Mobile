import 'package:flutter/material.dart';
import 'package:flutter_crs/faculty/faculty-widgets.dart';

class FacultyPage extends StatelessWidget {
  const FacultyPage({Key? key}) : super(key: key);
  static const darkMaroon = Color(0xFF8B0000);

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FacultyPage()));
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
          child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 50.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const Text(
                          'DELA CRUZ, JUAN PEPITO',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: darkMaroon,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Welcome to the Official CRS Mobile App of',
                          style:
                              TextStyle(fontSize: 12, fontFamily: 'Montserrat'),
                          textAlign: TextAlign.left,
                        ),
                        const Text(
                          'Pamantasan ng Lungsod ng Maynila !',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: darkMaroon,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 50),
                        const Text(
                          'Contacts:',
                          style:
                              TextStyle(fontSize: 12, fontFamily: 'Montserrat'),
                          textAlign: TextAlign.left,
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: const EdgeInsets.all(0),
                          leading: const Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                            size: 15,
                          ),
                          title: const Text(
                            'info@plm.edu.ph',
                            style:
                                TextStyle(fontSize: 12, fontFamily: 'Open San'),
                          ),
                          onTap: () => {},
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: const EdgeInsets.all(0),
                          leading: const Icon(
                            Icons.travel_explore_outlined,
                            color: Colors.black,
                            size: 15,
                          ),
                          title: const Text(
                            'plm.edu.ph',
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Open Sans'),
                          ),
                          onTap: () => {},
                        ),
                        ListTile(
                          dense: true,
                          contentPadding:
                              const EdgeInsets.only(top: 0, bottom: 0),
                          leading: const Icon(
                            Icons.person_pin_outlined,
                            color: Colors.black,
                            size: 15,
                          ),
                          title: const Text(
                            'Campus Directory',
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Open Sans'),
                          ),
                          onTap: () => {},
                        ),
                        ListTile(
                          dense: true,
                          contentPadding:
                              const EdgeInsets.only(top: 0, bottom: 0),
                          leading: const Icon(
                            Icons.facebook_outlined,
                            color: Colors.black,
                            size: 15,
                          ),
                          title: const Text(
                            '@PLM.Haribon',
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Open Sans'),
                          ),
                          onTap: () => {},
                        ),
                        ListTile(
                          dense: true,
                          contentPadding:
                              const EdgeInsets.only(top: 0, bottom: 0),
                          leading: const Icon(
                            Icons.link_outlined,
                            color: Colors.black,
                            size: 15,
                          ),
                          title: const Text(
                            '@PLM_Manila',
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Open Sans'),
                          ),
                          onTap: () => {},
                        ),
                      ]))),
        ),
      ]),
    );
  }
}
