import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/loginregister/daftar.dart';
import 'package:flutter_jago_coding_lat/loginregister/login.dart';
import 'package:flutter_jago_coding_lat/profil/newprofil/alamat.dart';
import 'package:flutter_jago_coding_lat/profil/newprofil/email.dart';
import 'package:flutter_jago_coding_lat/profil/newprofil/nama.dart';
import 'package:flutter_jago_coding_lat/profil/newprofil/phone.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 60),
                      child: Container(
                          height: 152,
                          decoration: BoxDecoration(
                            color: Color(0xffE5F0E5),
                          ))),
                  Positioned(
                      top: 110,
                      child: CircleAvatar(
                        radius: 48,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/icons/logo.png'),
                          radius: 40,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Harfa Thandila',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'harfa.tandila28@gmail.com',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 30),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Daftar()));
                        },
                        child: Text(
                          'Create New Account?',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              color: Colors.white),
                        ),
                        color: Color(0xff53BC3D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    ListView(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      children: [
                        InkWell(
                          child: ListTile(
                            title: Text(
                              'Nama',
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 13,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Nama()));
                          },
                        ),
                        Divider(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Email()));
                          },
                          child: ListTile(
                              title: Text(
                                'Email',
                              ),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 13,
                                ),
                                onPressed: () {},
                              )),
                        ),
                        Divider(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Phone()));
                          },
                          child: ListTile(
                              title: Text(
                                'Phone',
                              ),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 13,
                                ),
                                onPressed: () {},
                              )),
                        ),
                        Divider(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Alamat()));
                          },
                          child: ListTile(
                              title: Text(
                                'Alamat',
                              ),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 13,
                                ),
                                onPressed: () {},
                              )),
                        ),
                        Divider(),
                        InkWell(
                          child: ListTile(
                            title: Text(
                              'Logout',
                              style: TextStyle(color: Color(0xffEB5757)),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
