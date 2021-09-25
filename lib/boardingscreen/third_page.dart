import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/loginregister/login.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/icons/boardthree.png',
            fit: BoxFit.cover,
            width: 420,
            height: 381,
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "The best choices just for you",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Center(
          //   child: Text(
          //     "“Orang bijak harus mempertimbangkan bahwa\nkesehatan adalah berkat terbesar manusia.\nBiarkan makanan menjadi obat dan obat\nmenjadi makanan Anda. ”\n- Hippocrates",
          //     style: TextStyle(
          //         fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
          //   ),
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              '““Makan adalah suatu keharusan,\ntetapi memilih jenis makan dengan cerdas adalah seni.”– La Rochefoucauld',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // padding: EdgeInsets.only(left: 22, right: 22),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                height: 60,
                minWidth: double.infinity,
                color: Color(0xff53BC3D),
                child: Center(
                    child: Text(
                  "Ayo Mulai",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
