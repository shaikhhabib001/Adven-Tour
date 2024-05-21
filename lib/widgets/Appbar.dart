import 'package:adventour/views/MyHomePage.dart';
import 'package:adventour/widgets/Helper.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.indigo;
  final Text title;
  final AppBar appBar;
  //static Provider provider = Provider("");

  /// you can add more fields that meet your needs

  const BaseAppBar({Key? key, required this.title, required this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title.data.toString(),
        style: const TextStyle(
          shadows: [
            BoxShadow(
              color: Color(0xFFffffff),
              //blurRadius: 1.0,
              //spreadRadius: 1.0,
              blurStyle: BlurStyle.outer,
              //offset: Offset(1.0, 1.0),
            ),
          ],
          color: Color(0xFFffffff),
          fontWeight: FontWeight.bold,
        ),
      ),

      centerTitle: false,
      backgroundColor: const Color(0xFF29395B),
      //const Color(0xFF154a4a),

      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Helper.AppButton(
            context,
            "Home",
            const MyHomePage(
              title: "AdvenTour",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Helper.AppButton(
            context,
            "Location",
            const MyHomePage(
              title: "AdvenTour",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Helper.AppButton(
            context,
            "Packages",
            const MyHomePage(
              title: "AdvenTour",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Helper.AppButton(
            context,
            "About Us",
            const MyHomePage(
              title: "AdvenTour",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Helper.AppButton(
            context,
            "Contact Us",
            const MyHomePage(
              title: "AdvenTour",
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
