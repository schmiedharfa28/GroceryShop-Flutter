import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/loginregister/login.dart';

class Daftar extends StatefulWidget {
  const Daftar({Key? key}) : super(key: key);

  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  bool hiden = true;
  void visible() {
    setState(() {
      hiden = !hiden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF5F6F8),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 24,
          ),
          color: Color(0xff53BC3D),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 48),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Halo,",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "buat akun dulu yuk?",
                style: TextStyle(fontSize: 16, color: Color(0xffAAAAAA)),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE5F0E5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color(0xffAAAAAA),
                    ),
                    hintStyle: TextStyle(fontSize: 13),
                    hintText: 'Enter Your Mail',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE5F0E5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintStyle: TextStyle(fontSize: 13),
                    hintText: 'Nama Pengguna',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE5F0E5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.call),
                    hintStyle: TextStyle(fontSize: 13),
                    hintText: 'Nomor Telepon',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE5F0E5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: hiden,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon:
                          Icon(hiden ? Icons.visibility : Icons.visibility_off),
                      onPressed: visible,
                    ),
                    hintStyle: TextStyle(fontSize: 13),
                    hintText: 'Kata Sandi',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minWidth: double.infinity,
                height: 60,
                color: Color(0xff53BC3D),
                child: Center(
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sudah Punya Akun?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff53BC3D),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff53BC3D),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
