import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/home/searching.dart';
import 'package:flutter_jago_coding_lat/transaksi/keranjangku.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailSearching extends StatefulWidget {
  Map<dynamic, String?>? listData;
  DetailSearching({this.listData});

  @override
  _DetailSearchingState createState() => _DetailSearchingState();
}

class _DetailSearchingState extends State<DetailSearching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5F0E5),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xff53BC3D),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Searching()));
          },
        ),
        title: Text(
          "Buah",
          style: TextStyle(
              fontSize: 19,
              color: Color(0xffAAAAAA),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.local_grocery_store_rounded,
              color: Color(0xff53BC3D),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KeranjangKu()));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  height: 315,
                  width: double.infinity,
                  color: Color(0xffE5F0E5),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/icons/${widget.listData?['gambar']}",
                            width: 330,
                            height: 290,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        elevation: 3,
                                        child: FavoriteButton(
                                          valueChanged: (_isFavorite) {
                                            print('Is Favorite $_isFavorite)');
                                          },
                                          iconSize: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  //],
                  //),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.listData?['nama']}'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Text('${widget.listData?['harga']}'.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 1,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Color(0xff53BC3D),
                              size: 20,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text("Deskripsi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Text(
                        '${widget.listData?['deskripsi']}'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // Divider(
                //   thickness: 1,
                //   color: Colors.black,
                // ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 9),
              child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.minimize,
                          color: Color(0xff53BC3D),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 25),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Color(0xff53BC3D),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  MaterialButton(
                      color: Color(0xff53BC3D),
                      minWidth: 200,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Tambah ke Keranjang",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () async {
                        final number = await showCupertinoDialog(
                            barrierDismissible: true,
                            context: context,
                            builder: createDialog);
                        print('$number');
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget createDialog(BuildContext context) => CupertinoAlertDialog(
        actions: [
          CupertinoDialogAction(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Color(0xff53BC3D),
                    size: 40,
                  ),
                  SizedBox(
                    height: 8.33,
                  ),
                  Text(
                    "Dimasukkan ke Keranjang",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            onPressed: () => Navigator.pop(context, 1),
          ),
         
        ],
      );
}
