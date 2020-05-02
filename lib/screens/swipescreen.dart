import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:Sumbawa_food/screens/join.dart';


class Walkthrough extends StatefulWidget {
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  @override
  Widget build(BuildContext context) {
    List<PageViewModel> pages = [
      PageViewModel(
        "Sepat Food",
        "Sepat adalah masakan Khas Sumbawa yang sangat disukai oleh masyarakat Sumbawa."
            " Sepat paling sering di hidangkan saat bulan Ramadhan tiba.",
        image: Image.asset(
          "assets/1sepat.png",
          height: 175.0,
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).accentColor,
          ),
          bodyTextStyle: TextStyle(fontSize: 15.0),
          dotsDecorator: DotsDecorator(
            activeColor: Theme.of(context).accentColor,
            activeSize: Size.fromRadius(8),
          ),
          pageColor: Theme.of(context).primaryColor,
        ),
      ),

      PageViewModel(
        "Ayam Bakar Taliwang",
        "Ayam Bakar Taliwang adalah makanan Khas Sumbawa Barat."
            "Sangat Populer di daerah NTB maupun diluar NTB ",
            
        image: Image.asset(
          "assets/ayambakar1.png",
          height: 185.0,
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).accentColor,
          ),
          bodyTextStyle: TextStyle(fontSize: 15.0),
          dotsDecorator: DotsDecorator(
            activeColor: Theme.of(context).accentColor,
            activeSize: Size.fromRadius(8),
          ),
          pageColor: Theme.of(context).primaryColor,
        ),
      ),

      PageViewModel(
        "Nasi Campur",
        "Nasi campur banyak dijumpai di daerah manapun."
            "Harga yang cukup ekonomis dan sangat terjangkau",
        image: Image.asset(
          "assets/nasicampur.png",
          height: 175.0,
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).accentColor,
          ),
          bodyTextStyle: TextStyle(fontSize: 15.0),
          dotsDecorator: DotsDecorator(
            activeColor: Theme.of(context).accentColor,
            activeSize: Size.fromRadius(8),
          ),
          pageColor: Theme.of(context).primaryColor,
        ),
      ),
    ];

    return WillPopScope(
      onWillPop: ()=>Future.value(false),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: IntroductionScreen(
            pages: pages,
            onDone: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return JoinApp();
                  },
                ),
              );
            },
            onSkip: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return JoinApp();
                  },
                ),
              );
            },
            showSkipButton: true,
            skip: Text("Skip"),
            next: Text(
              "Next",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).accentColor,
              ),
            ),
            done: Text(
              "Done",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
