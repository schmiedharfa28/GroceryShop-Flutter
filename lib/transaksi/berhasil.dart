import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/transaksi/pembayaran.dart';

class Berhasil extends StatefulWidget {
  @override
  _BerhasilState createState() => _BerhasilState();
}

class _BerhasilState extends State<Berhasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F0E5),
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 20, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                Icons.close,
                size: 24,
              ),
              color: Color(0xff53BC3D),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pembayaran()));
              },
            ),
            Center(
              child: Icon(
                Icons.check_circle,
                color: Color(
                  0xff53BC3D,
                ),
                size: 80,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Center(
              child: Text(
                "Transaksi Berhasil",
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 29,
              ),
              child: Container(
                width: double.infinity,
                height: 197,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/icons/alpukat.png"),
                                  fit: BoxFit.cover,
                                ),
                                color: Color(0xffE5F0E5),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              height: 85,
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Buah",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0XFFAAAAAA)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Alpukat",
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "1 KG",
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Rp 13.000",
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Color(0xff53BC3D)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nomor Pesanan :",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffAAAAAA)),
                            ),
                            Text(
                              "123XY452",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Metode Pembayaran :",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffAAAAAA)),
                            ),
                            Text(
                              "BNI Virtual Account",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "1233434232949",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.copy,
                                    size: 24,
                                    color: Color(0xff53BC3D),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
