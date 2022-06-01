import 'package:bookinghotel/booking/booking1.dart';
import 'package:bookinghotel/booking/booking2.dart';
import 'package:bookinghotel/booking/booking3.dart';
import 'package:bookinghotel/koneksi.dart';
import 'package:bookinghotel/login_view.dart';
import 'package:flutter/material.dart';
import 'package:bookinghotel/theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  KoneksiFirebase kb = KoneksiFirebase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 30, 24, 10),
            width: MediaQuery.of(context).size.width * 1 / 2,
            height: MediaQuery.of(context).size.height * 1 / 9,
            child: Card(
              color: primaryBlue,
              elevation: 3,
              child: SizedBox(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    kb.keluar(context);
                  },
                  child: const Center(
                    child: Text(
                      "Logout",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 8 / 10,
            child: ListView(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Pilih Hotel Pilihan Anda!',
                              style: heading2.copyWith(color: textBlack),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/accent.png',
                                  width: 99,
                                  height: 4,
                                ),
                                Image.asset(
                                  'assets/images/accent.png',
                                  width: 99,
                                  height: 4,
                                ),
                                Image.asset(
                                  'assets/images/accent.png',
                                  width: 99,
                                  height: 4,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Hotel Serindu',
                                style: heading2.copyWith(color: textBlack),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 80),
                              width: MediaQuery.of(context).size.width * 3 / 4,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Booking2()));
                                },
                                child: Image.asset(
                                  'assets/images/foto2.jpg',
                                  width: 235,
                                  height: 235,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Hotel Perkarangan',
                                style: heading2.copyWith(color: textBlack),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 80),
                              width: MediaQuery.of(context).size.width * 3 / 4,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Booking3()));
                                },
                                child: Image.asset(
                                  'assets/images/foto4.jpg',
                                  width: 235,
                                  height: 235,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Hotel Amazon',
                                style: heading2.copyWith(color: textBlack),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 80),
                              width: MediaQuery.of(context).size.width * 3 / 4,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Booking1()));
                                },
                                child: Image.asset(
                                  'assets/images/foto6.jpg',
                                  width: 235,
                                  height: 235,
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Card(
                        //   color: Colors.red,
                        //   elevation: 10,
                        //   child: SizedBox(
                        //     height: 30,
                        //     width: 100,
                        //     child: InkWell(
                        //       splashColor: Colors.white,
                        //       onTap: () {
                        //         Navigator.push(
                        //             context,
                        //             MaterialPageRoute(
                        //                 builder: (context) => const Home()));
                        //       },
                        //       child: const Center(
                        //         child: Text(
                        //           "DETAIL",
                        //           style: TextStyle(fontSize: 20, color: Colors.black),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
