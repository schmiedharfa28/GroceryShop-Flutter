import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/bottomnavigation.dart';
import 'package:flutter_jago_coding_lat/home/homescreen.dart';
import 'package:flutter_jago_coding_lat/loginregister/daftar.dart';
import 'package:flutter_jago_coding_lat/loginregister/forgotpassword.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            Icons.close,
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
                  "HI!",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "Masuk ke akunmu sekarang",
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
                    prefixIcon: Icon(Icons.perm_identity),
                    hintStyle: TextStyle(fontSize: 13),
                    hintText: 'Enter Name',
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
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigation()));
                  },
                  height: 60,
                  minWidth: double.infinity,
                  color: Color(0xff53BC3D),
                  child: Center(
                      child: Text(
                    "Masuk",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text(
                  "Lupa Kata Sandi?",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff53BC3D),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
              ),
              SizedBox(
                height: 134,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum punya akun?",
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
                      "Daftar",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff53BC3D),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Daftar()));
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
