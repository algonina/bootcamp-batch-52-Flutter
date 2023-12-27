import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /**
     * Status bar colors
     */
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: HexColor('#E4E4E4'),
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarColor: HexColor("#E4E4E4"),
    // ));
    return Scaffold(
      backgroundColor: HexColor('#f9f9f9'),
      appBar: AppBar(
        backgroundColor: HexColor('#f9f9f9'),
        systemOverlayStyle:
            SystemUiOverlayStyle(systemNavigationBarColor: HexColor('#f9f9f9')),
      ),
      body: Container(
          child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image(image: AssetImage('assets/images/one.png')),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find your job",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            height: 1.2,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Dream Job",
                        style: TextStyle(
                          fontSize: 45,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#FCA34D'),
                          decoration: TextDecoration.underline,
                          decorationColor: HexColor('#FCA34D'),
                        ),
                      ),
                      Text(
                        "Here!",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        "Explore all the most exciting job roles based on your interest and study major.",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor('#130160'),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        child: Container(
            child: const Icon(
          Icons.arrow_right,
          size: 40,
          color: Colors.white,
        )),
      ),
    );
  }
}
