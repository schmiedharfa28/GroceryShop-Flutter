import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/transaksi/berhasil.dart';
import 'package:flutter_jago_coding_lat/transaksi/keranjangku.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({Key? key}) : super(key: key);

  @override
  _PembayaranState createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F0E5),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5F0E5),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 24,
          ),
          color: Color(0xff53BC3D),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => KeranjangKu()));
          },
        ),
        title: Text(
          "Pembayaran",
          style: TextStyle(
              fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Metode Pembayaran",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/icons/bni.png'),
                        width: 53,
                        height: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "BNI Virtual Account",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Flexible(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                          color: Color(0xff53BC3D),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Data Penerima",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 24,
                        color: Color(0xff53BC3D),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Harfa Thandila",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 155,
                      ),
                      Flexible(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                          color: Color(0xff53BC3D),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Icon(
                        Icons.fmd_good,
                        size: 24,
                        color: Color(0xff53BC3D),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Perumahan Dhaya Pesona Blok\nB2 No 2",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Flexible(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                          color: Color(0xff53BC3D),
                        ),
                      ),
                      SizedBox(
                        height: 190,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 34, top: 15, right: 20, bottom: 15),
                  color: Colors.white,
                  width: double.infinity,
                  height: 80,
                  child: Row(
                    children: [
                      Text(
                        "15.000",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 34,
                      ),
                      Flexible(
                        child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            height: 50,
                            minWidth: 186,
                            color: Color(0xff53BC3D),
                            child: Center(
                                child: Text("Bayar",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Berhasil()));
                            }),
                      )
                    ],
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
