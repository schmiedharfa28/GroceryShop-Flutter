import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/bottomnavigation.dart';
import 'package:flutter_jago_coding_lat/profil/profil.dart';

class Nama extends StatelessWidget {
  const Nama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.500,
        title: Text(
          "Edit Nama",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xffaaaaaa),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomNavigation()));
            }),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Name",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFFF6F6F6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 14),
                  hintText: 'Harfa Thandila',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.symmetric(horizontal: 160, vertical: 18),
              color: Color(0xFF00B300),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BottomNavigation()));
              },
              child: Text(
                'Save',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
