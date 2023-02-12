import 'package:dn_coffee/main_page.dart';
import 'package:dn_coffee/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  "masuk akun",
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
                Column(
                  children: <Widget>[
                    Image(image: AssetImage("images/login.png")),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.73,
                      child: Column(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: fieldMasuk("Email")),
                          fieldMasuk("Kata Sandi"),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: MediaQuery.of(context).size.width * 0.73,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Belum Memiliki Akun? ",
                              style: TextStyle(fontSize: 18),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Register();
                                }));
                              },
                              child: Text(
                                "Daftar!",
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
                                  "Masuk",
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

  TextField fieldMasuk(String label) {
    return TextField(
      decoration: InputDecoration(
          labelText: label, labelStyle: TextStyle(color: Color(0xff82916A))),
    );
  }
}
