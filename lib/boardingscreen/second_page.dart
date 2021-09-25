import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/boardingscreen/third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            child: Image.asset(
              'assets/icons/boardtwo.png',
              fit: BoxFit.cover,
              width: 420,
              height: 381,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdPage()));
            },
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
              '“Makananmu adalah akun bankmu. Pilihan makanan\nyang baik adalah investasi yang baik”\n– Bethenny Frankel',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
