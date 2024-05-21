import 'package:flutter/material.dart';

class Helper{

  static Color Activebuttoncolor = const Color(0xFF61708E); //0xFF9bc1c0
  static Color Inactivebuttoncolor = const Color(0xFFa4a4a4);

  static OutlinedButton CreateDataTableButton(BuildContext context,String Name,{ Function()? onPressed}) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            Activebuttoncolor),
        foregroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFFFFFFFF)),
        overlayColor: MaterialStateProperty.all<Color>(
            const Color(0xFFdcdcdc).withOpacity(0.2)),
        elevation: MaterialStateProperty.all(4.0),
        shape:
        MaterialStateProperty.resolveWith<OutlinedBorder>(
                (_) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              );
            }),
      ),
      onPressed: onPressed ?? () => {},
      child: Text(Name),
    );
  }
  // For creating Icon Buttons inside Data Table
  static CreateIconButton(BuildContext context,IconData icon, { Function()? onPressed}) {
    return IconButton(

      color: Colors.white,
      onPressed: onPressed ?? () => {},
      icon: Icon(icon),

    );
  }

  static TextButton AppButton(BuildContext context,String Name, Widget page) {
    return TextButton(

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF29395B)),
        foregroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF29395B)),
        overlayColor: MaterialStateProperty.all<Color>(
            const Color(0xFFFFFFFF).withOpacity(0.05)),
        elevation: MaterialStateProperty.all(0.0),
        minimumSize: MaterialStateProperty.all<Size>(const Size(100, 50)),
        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontWeight: FontWeight.normal)),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(Name,
        style: const TextStyle(color: Color(0xFFFFFFFF),
            fontSize: 18, fontFamily: "Comfortaa"),
      ),
    );
  }

  static TextButton VideoButton(BuildContext context,String Name, Widget page) {
    return TextButton(

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFFFFFFFF)),
        foregroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFFFFFFFF)),
        overlayColor: MaterialStateProperty.all<Color>(
            const Color(0xFF29395B).withOpacity(0.05)),
        elevation: MaterialStateProperty.all(0.0),
        minimumSize: MaterialStateProperty.all<Size>(const Size(100, 40)),
        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontWeight: FontWeight.bold)),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(Name,
        style: const TextStyle(color: Color(0xFF29395B),
            fontSize: 18, fontFamily: "Comfortaa"),
      ),
    );
  }

  // For Buttons created outside the Data Table
  static OutlinedButton CreateButton(BuildContext context, String Name, IconData icon, Widget page) {
    return OutlinedButton(

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            Activebuttoncolor),
        foregroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF000000)),
        overlayColor: MaterialStateProperty.all<Color>(
            const Color(0xFF154a4a).withOpacity(0.05)),
        elevation: MaterialStateProperty.all(10.0),
        minimumSize: MaterialStateProperty.all<Size>(const Size(200, 50)),
        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontWeight: FontWeight.bold)),
        shape:
        MaterialStateProperty.resolveWith<OutlinedBorder>(
                (_) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              );
            }),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(Name),
    );
  }

}


class HeadlineText extends StatelessWidget {
  final String text;
  TextAlign? align;
  double? fontsize = 20;

  HeadlineText(this.text, {double? this.fontsize, TextAlign? this.align, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align == null ? TextAlign.center: align,
      style: TextStyle(
        fontSize: fontsize == null ? 20: fontsize,
        fontWeight: FontWeight.w700,
        //color: Color(0xFF3e2723),
        color: Colors.black,
        shadows: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 2.0,
            spreadRadius: 10.0,
            blurStyle: BlurStyle.outer,
            //offset: Offset(1.0, 1.0),
          ),
        ],

      ),
    );
  }
}