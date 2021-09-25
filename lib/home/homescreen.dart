import 'package:carousel_slider/carousel_slider.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/bottomnavigation.dart';
import 'package:flutter_jago_coding_lat/home/detailsearching.dart';
import 'package:flutter_jago_coding_lat/home/searching.dart';
import 'package:flutter_jago_coding_lat/transaksi/keranjangku.dart';

final List<String> imgList = [
  'assets/icons/slider.png',
  'assets/icons/slider.png',
  'assets/icons/slider.png',
  'assets/icons/slider.png'
];

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
        "Mentimun, timun, atau ketimun merupakan tumbuhan yang menghasilkan buah yang dapat dimakan. Buahnya biasanya dipanen ketika belum masak benar untuk dijadikan sayuran atau penyegar, tergantung jenisnya"
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
    "gambar": "timun.png",
    "nama": "Timun",
    "subtitle": "Buah",
    "harga": "Rp 5.000 / kg",
    "deskripsi":
        "Tomat adalah tumbuhan dari keluarga Solanaceae, tumbuhan asli Amerika Tengah dan Selatan, dari Meksiko sampai Peru. Tomat merupakan tumbuhan siklus hidup singkat, dapat tumbuh setinggi 1 sampai 3 meter"
  }
];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> imageSliders = imgList
      .map(
        (item) => Container(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.infinity,
                    ),
                  ],
                )),
          ),
        ),
      )
      .toList();

  int _current = 0;
  final CarouselController _controller = CarouselController();

  bool hiden = true;
  void visible() {
    setState(() {
      hiden = !hiden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F0E5),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5F0E5),
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Image(
                image: AssetImage('assets/icons/logo.png'),
                height: 24,
                width: 16,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        title: Text(
          "Fruge",
          style: TextStyle(
              fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold),
        ),
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
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                Icons.notifications,
                color: Color(0xff53BC3D),
              ),
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ),
        ],
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
                        // _tripEditModalBottomSheet();
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
                height: 21,
              ),
              Container(
                child: Column(
                  children: [
                    CarouselSlider(
                      items: imageSliders,
                      carouselController: _controller,
                      options: CarouselOptions(
                          viewportFraction: 1, //hanya menampilkan 1 bagian
                          autoPlay: true, //gammbar bergerak(slide) otomatis
                          // enlargeCenterPage: true, //membesar ketika slide
                          aspectRatio: 2.2,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.only(left: 10, top: 10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Color(0xff2B976B))
                                    .withOpacity(
                                        _current == entry.key ? 1 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terbaru",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lihat Semua",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 175,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dataList.length,
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
                          width: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 0,
                            color: Colors.white,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icons/${dataList[index]['gambar']}",
                                      width: 100,
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
                                          width: 30,
                                          height: 30,
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
                                              iconSize: 12,
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
                    }),
              ),
              SizedBox(
                height: 19,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terlaris",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lihat Semua",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 950,
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
                                    width: 100,
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
