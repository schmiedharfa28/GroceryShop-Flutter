import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/loginregister/login.dart';

class ForgotPasswordTwo extends StatefulWidget {
  const ForgotPasswordTwo({Key? key}) : super(key: key);

  @override
  _ForgotPasswordTwoState createState() => _ForgotPasswordTwoState();
}

class _ForgotPasswordTwoState extends State<ForgotPasswordTwo> {
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
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 164,
            ),
            child: Column(
              children: [
                Center(
                  child: Icon(
                    Icons.textsms_outlined,
                    size: 50,
                    color: Color(0xff53BC3D),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Cek emailmu ya!",
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
                    "Kami telah mengirimkan link untuk mengubah\nkata sandi akun anda. Cek segera ya!",
                    maxLines: 2,
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
                MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minWidth: double.infinity,
                    height: 60,
                    color: Color(0xff53BC3D),
                    child: Center(
                      child: Text("Masuk",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    })
              ],
            )),
      ),
    );
  }
}
