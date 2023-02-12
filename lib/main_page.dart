import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xffFFFEFB),
        child: Container(
          margin: EdgeInsets.only(top: 60, right: 28, left: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "DN Coffee",
                      style: TextStyle(
                          fontSize: 30,
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
                      width: 46,
                      height: 46,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(23),
                          child: Image(image: AssetImage("images/lluuu.jpg"))),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Hello Lulu",
                      style: TextStyle(fontSize: 20, color: Color(0xffCB8655)),
                    ),
                    Text(
                      "Bubuk Kopi Robusta Kualitas Terbaik",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff3E4957),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: <Widget>[
                    Flexible(
                        flex: 6,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                                flex: 5, child: mainButton("produk", "produk")),
                            Spacer(
                              flex: 1,
                            ),
                            Flexible(
                                flex: 5,
                                child: mainButton("pemesanan", "pemesanan")),
                          ],
                        )),
                    Spacer(
                      flex: 1,
                    ),
                    Flexible(
                        flex: 6,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                                flex: 5,
                                child: mainButton("pembayaran", "pembayaran")),
                            Spacer(
                              flex: 1,
                            ),
                            Flexible(
                                flex: 5, child: mainButton("profil", "profil")),
                          ],
                        )),
                    Spacer(
                      flex: 1,
                    ),
                    Flexible(
                        flex: 3,
                        child: Stack(children: <Widget>[
                          Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      width: 1, color: Color(0xff82916A)),
                                  color: Color(0xffffffff)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Flexible(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Image(
                                        image: AssetImage(
                                            "images/keluar_akun.png")),
                                  )),
                              const Flexible(
                                  flex: 10,
                                  child: Text(
                                    "keluar akun",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffCB8655)),
                                  )),
                            ],
                          )
                        ])),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Text(
                  "“Kopi yang baik akan selalu menemukan penikmatnya.”",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(180, 0, 0, 0)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Stack mainButton(String gambar, String title) {
    return Stack(
      children: <Widget>[
        Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Color(0xff82916A)),
                color: Color(0xffffffff)),
          ),
        ),
        Column(
          children: <Widget>[
            Flexible(
                flex: 7,
                child: Container(
                  alignment: Alignment.center,
                  child: Image(image: AssetImage("images/main_$gambar.png")),
                )),
            Flexible(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffCB8655)),
                )),
          ],
        )
      ],
    );
  }
}
