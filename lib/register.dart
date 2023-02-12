import 'package:dn_coffee/login.dart';
import 'package:dn_coffee/main_page.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  List<String> labelStr = [
    "Nama Lengkap",
    "Username",
    "Email",
    "Telepon",
    "Password",
    "Alamat"
  ];
  List<Widget> widgets = [];

  _RegisterState() {
    for (int i = 0; i < labelStr.length; i++) {
      widgets.add(fieldDaftar(labelStr[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Color(0xffffffff),
          child: Container(
            margin: EdgeInsets.only(top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text(
                  "buat akun",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff82916A),
                      shadows: <Shadow>[
                        Shadow(
                            color: Color.fromARGB(64, 0, 0, 0),
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.bottomRight,
                          child:
                              Image(image: AssetImage("images/register.png"))),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          width: MediaQuery.of(context).size.width * 0.73,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: widgets,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width * 0.73,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Sudah Memiliki Akun? ",
                              style: TextStyle(fontSize: 18),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Login();
                                }));
                              },
                              child: Text(
                                "Masuk!",
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xffCB8655)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(25),
                        elevation: 3,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.73,
                          height: 92,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xffCB8655)),
                          child: Material(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MainPage();
                                }));
                              },
                              child: const Center(
                                child: Text(
                                  "Daftar",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffffffff),
                                      shadows: <Shadow>[
                                        Shadow(
                                            color: Color.fromARGB(64, 0, 0, 0),
                                            offset: Offset(0, 4),
                                            blurRadius: 4)
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField fieldDaftar(String label) {
    return TextField(
      decoration: InputDecoration(
          labelText: label, labelStyle: TextStyle(color: Color(0xff82916A))),
    );
  }
}
