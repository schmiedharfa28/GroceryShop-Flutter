import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/bottomnavigation.dart';
import 'package:flutter_jago_coding_lat/home/detailsearching.dart';
import 'package:flutter_jago_coding_lat/home/homescreen.dart';

class Searching extends StatefulWidget {
  const Searching({Key? key}) : super(key: key);

  @override
  _SearchingState createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  List<Map<dynamic, String>> dataList = [
    {
      "gambar": "alpukat.png",
      "nama": "Alpukat",
      "subtitle": "Buah",
      "harga": "Rp 15.000 / kg",
      "deskripsi":
          "Avokad atau alpukat adalah tumbuhan penghasil buah meja dengan nama sama. Tumbuhan ini berasal dari Meksiko dan Amerika Tengah dan kini banyak dibudidayakan di Amerika Selatan dan Amerika Tengah sebagai tanaman perkebunan monokultur"
    },
    {
      "gambar": "brokoli.png",
      "nama": "Brokoli",
      "subtitle": "Buah",
      "harga": "Rp 10.000 / kg",
      "deskripsi":
          "Brokoli adalah tanaman yang sering dibudidayakan sebagai sayur. Brokoli adalah kultivar dari spesies yang sama dengan kubis dan kembang kol, yaitu Brassica oleracea. Brokoli berasal dari daerah Laut Tengah dan sudah sejak masa Yunani Kuno dibudidayakan"
    },
    {
      "gambar": "orange.png",
      "nama": "Jeruk",
      "subtitle": "Buah",
      "harga": "Rp 13.000 / kg",
      "deskripsi":
          "Jeruk sangatlah beragam dan beberapa spesies dapat saling bersilangan dan menghasilkan hibrida antarspesies ('interspecific hybrid) yang memiliki karakter yang khas, yang berbeda dari spesies tetuanya. "
    },
    {
      "gambar": "tomat.png",
      "nama": "Tomat",
      "subtitle": "Buah",
      "harga": "Rp 9.000 / kg",
      "deskripsi":
          "Tomat adalah tumbuhan dari keluarga Solanaceae, tumbuhan asli Amerika Tengah dan Selatan, dari Meksiko sampai Peru. Tomat merupakan tumbuhan siklus hidup singkat, dapat tumbuh setinggi 1 sampai 3 meter"
    },
    {
      "gambar": "timun.png",
      "nama": "Timun",
      "subtitle": "Buah",
      "harga": "Rp 5.000 / kg",
      "deskripsi":
          "Mentimun, timun, atau ketimun merupakan tumbuhan yang menghasilkan buah yang dapat dimakan. Buahnya biasanya dipanen ketika belum masak benar untuk dijadikan sayuran atau penyegar, tergantung jenisnya"
    },
    {
      "gambar": "orange.png",
      "nama": "Jeruk",
      "subtitle": "Buah",
      "harga": "Rp 13.000 / kg",
      "deskripsi":
          "Jeruk sangatlah beragam dan beberapa spesies dapat saling bersilangan dan menghasilkan hibrida antarspesies ('interspecific hybrid) yang memiliki karakter yang khas, yang berbeda dari spesies tetuanya. "
    },
    {
      "gambar": "alpukat.png",
      "nama": "Alpukat",
      "subtitle": "Buah",
      "harga": "Rp 15.000 / kg",
      "deskripsi":
          "Avokad atau alpukat adalah tumbuhan penghasil buah meja dengan nama sama. Tumbuhan ini berasal dari Meksiko dan Amerika Tengah dan kini banyak dibudidayakan di Amerika Selatan dan Amerika Tengah sebagai tanaman perkebunan monokultur"
    },
    {
      "gambar": "tomat.png",
      "nama": "Tomat",
      "subtitle": "Buah",
      "harga": "Rp 9.000 / kg",
      "deskripsi":
          "Tomat adalah tumbuhan dari keluarga Solanaceae, tumbuhan asli Amerika Tengah dan Selatan, dari Meksiko sampai Peru. Tomat merupakan tumbuhan siklus hidup singkat, dapat tumbuh setinggi 1 sampai 3 meter"
    },
    {
      "gambar": "brokoli.png",
      "nama": "Brokoli",
      "subtitle": "Buah",
      "harga": "Rp 10.000 / kg",
      "deskripsi":
          "Brokoli adalah tanaman yang sering dibudidayakan sebagai sayur. Brokoli adalah kultivar dari spesies yang sama dengan kubis dan kembang kol, yaitu Brassica oleracea. Brokoli berasal dari daerah Laut Tengah dan sudah sejak masa Yunani Kuno dibudidayakan"
    }
  ];
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
                MaterialPageRoute(builder: (context) => BottomNavigation()));
          },
        ),
        title: Text(
          "Pencarian",
          style: TextStyle(
              fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: Icon(
                        Icons.search,
                        color: Color(0xff53BC3D),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavigation()));
                      },
                    ),
                    hintStyle: TextStyle(fontSize: 13),
                    hintText: 'Cari Buah Segar',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 116,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: const DecorationImage(
                              image: AssetImage("assets/icons/frugesearch.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Color(0XFFF2F2F2), width: 1),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0XFFF2F2F2), spreadRadius: 1)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            "Semua",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 116,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: const DecorationImage(
                              image: AssetImage("assets/icons/frugesearch.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Color(0XFFF2F2F2), width: 1),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0XFFF2F2F2), spreadRadius: 1)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: Text(
                            "Buah",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 116,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: const DecorationImage(
                              image: AssetImage("assets/icons/frugesearch.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Color(0XFFF2F2F2), width: 1),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0XFFF2F2F2), spreadRadius: 1)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: Text(
                            "Sayur",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 750,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dataList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailSearching(
                                    listData: dataList[index]
                                    // nama: dataList[index]['nama'],
                                    // gambar: dataList[index]['gambar'],
                                    // deskripsi: dataList[index]['deskripsi'],
                                    )));
                      },
                      child: Container(
                        width: 153,
                        height: 189,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0,
                          color: Colors.white,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 8),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/icons/${dataList[index]['gambar']}",
                                    width: 110,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${dataList[index]['nama']}",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          elevation: 3,
                                          child: FavoriteButton(
                                            valueChanged: (_isFavorite) {
                                              print(
                                                  'Is Favorite $_isFavorite)');
                                            },
                                            iconSize: 25,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("${dataList[index]['subtitle']}",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xffAAAAAA))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${dataList[index]['harga']}",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff53BC3D)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
