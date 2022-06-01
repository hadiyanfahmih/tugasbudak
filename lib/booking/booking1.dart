import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bookinghotel/theme.dart';
import 'package:firebase_database/firebase_database.dart';

import '../home.dart';

class Booking1 extends StatelessWidget {
  TextEditingController nama = TextEditingController();
  TextEditingController nohp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("RISMA"),
        ),
        backgroundColor: primaryBlue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Booking\nHotel Amazon',
                    style: heading2.copyWith(color: textBlack),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/accent.png',
                    width: 99,
                    height: 4,
                  )
                ],
              ),
              const SizedBox(
                height: 48,
              ),
              Form(
                  child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14)),
                    child: TextFormField(
                      controller: nama,
                      decoration: InputDecoration(
                          hintText: 'Nama',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14)),
                    child: TextFormField(
                      controller: nohp,
                      decoration: InputDecoration(
                          hintText: 'Nomor Handphone',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textBlack,
                        borderRadius: BorderRadius.circular(14)),
                    child: TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                          hintText: 'Hotel Amazon per-malam = 200.000',
                          hintStyle: heading6.copyWith(color: textWhiteGrey),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  )
                ],
              )),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
              const SizedBox(
                height: 32,
              ),
              const SizedBox(
                height: 32,
              ),
              Material(
                borderRadius: BorderRadius.circular(14),
                elevation: 0,
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                      color: primaryBlue,
                      borderRadius: BorderRadius.circular(14)),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () async {
                        Map<String, dynamic> data = {
                          "Nama": nama.text,
                          "No.HP": nohp.text,
                          "Hotel": "Amazon"
                        };
                        if (nama.text != "" && nohp.text != "") {
                          await FirebaseFirestore.instance
                              .collection("Amazon")
                              .add(data);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                              (route) => false);
                        }
                        ;
                      },
                      borderRadius: BorderRadius.circular(14),
                      child: Center(
                        child: Text(
                          'Pesan Hotel',
                          style: heading5.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
