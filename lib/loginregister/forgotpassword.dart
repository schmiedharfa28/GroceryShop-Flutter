import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/loginregister/forgotpassword2.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
            padding:
                EdgeInsets.only(left: 20, right: 20, top: 164, bottom: 163),
            child: Column(
              children: [
                Center(
                  child: Icon(
                    Icons.lock,
                    size: 50,
                    color: Color(0xff53BC3D),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lupa Kata Sandi?",
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Masukkan email yang kamu gunakan untuk\nmendaftarkan akun ini. Kami akan segera mengirimkan\nlink untuk mengubah kata sandi",
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffAAAAAA),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                      hintText: 'Masukkan Email Anda',
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
                      child: Text("Kirim Sekarang",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordTwo()));
                    })
              ],
            )),
      ),
    );
  }
}
