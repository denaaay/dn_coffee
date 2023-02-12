import 'package:dn_coffee/register.dart';
import 'package:flutter/material.dart';

class GettingStart extends StatelessWidget {
  const GettingStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xffffffff),
          width: MediaQuery.of(context).size.width,
          child: Container(
            margin: EdgeInsets.only(top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text(
                  "DN Coffee",
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
                Image(image: AssetImage("images/getting_start.png")),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Text(
                    "“Kopi tidak bertanya, kopi mengerti”",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(180, 0, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Material(
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
                              return Register();
                            }));
                          },
                          child: const Center(
                            child: Text(
                              "Mulai",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
