import 'package:adventour/views/MyHomePage.dart';
import 'package:flutter/material.dart';

class HomepageItems extends StatelessWidget {
  const HomepageItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: <Widget>[
              buildOutlinedButton(
                context,
                "Flight Services",
                "Arrival and Departure",
                "assets/icons/plane.png",
                const MyHomePage(
                  title: "AdvenTour",
                ),
              ),
              buildOutlinedButton(
                context,
                "Food Services",
                "Catering",
                "assets/icons/food.png",
                const MyHomePage(
                  title: "AdvenTour",
                ),
              ),
              buildOutlinedButton(
                context,
                "Travel Services",
                "Pick-up/drop",
                "assets/icons/bus.png",
                const MyHomePage(
                  title: "AdvenTour",
                ),
              ),
              buildOutlinedButton(
                context,
                "Hotel Services",
                "Check-in/out",
                "assets/icons/hotel.png",
                const MyHomePage(
                  title: "AdvenTour",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Color activebuttoncolor = const Color(0xFFfbe9d3); //0xFF9bc1c0
  static Color inactivebuttoncolor = const Color(0xFFa4a4a4);

  OutlinedButton buildOutlinedButton(BuildContext context, String name,
      String subtext, String image, Widget page) {
    return OutlinedButton(
      //child: const Text("Data Provider A"),
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all<Color>(const Color(0xFFFFFFFF)),
        foregroundColor:
            WidgetStateProperty.all<Color>(const Color(0xFF000000)),
        overlayColor: WidgetStateProperty.all<Color>(
            const Color(0xFF707070).withOpacity(0.05)),
        elevation: WidgetStateProperty.all(15.0),
        minimumSize: WidgetStateProperty.all<Size>(const Size(300, 300)),
        textStyle: WidgetStateProperty.all<TextStyle>(
            const TextStyle(fontWeight: FontWeight.bold)),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder>((_) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          );
        }),
      ),

      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 20),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF29395B),
              fontFamily: 'Comfortaa',
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subtext,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFFB0B0B0),
              fontFamily: 'Comfortaa',
              fontSize: 17,
            ),
          ),
        ],
      ),

      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
