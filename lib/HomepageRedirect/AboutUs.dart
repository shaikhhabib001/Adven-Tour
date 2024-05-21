import 'package:adventour/widgets/CustomScaffold.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return CustomScaffold(
      Title: "About Us",
      body: Center(
        child: ListView(padding: const EdgeInsets.all(20.0), children: <Widget>[
          const SizedBox(height: 10),
          Image.asset("assets/images/color-text-logo.png",
              width: isSmallScreen ? 100 : 200,
              height: isSmallScreen ? 100 : 200),
          const SizedBox(
            height: 20,
          ),
          Card(
            color: const Color(0xFFfbe9d3),
            elevation: 8,
            margin: const EdgeInsets.all(2),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              children: <Widget>[
                buildListTile(context, "What is She! Masomo about?",
                    Icons.spatial_audio_off_outlined),
                const Divider(),
                const SizedBox(width: 8),
                const ListTile(
                  title: Text(
                    'She! Masomo is an initiative that aims to empower young women between the age of 15-25 by providing sexual health information in rural regions, focusing on menstrual health and contraception products.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            color: const Color(0xFFfbe9d3),
            elevation: 8,
            margin: const EdgeInsets.all(2),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              children: <Widget>[
                const ListTile(
                  title: Text(
                    'Source:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      //fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFe65c00),
                      shadows: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 1.0,
                          spreadRadius: 10.0,
                          blurStyle: BlurStyle.outer,
                          //offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const ListTile(
                  title: Text('https://www.jojo.ke/',
                      style: TextStyle(color: Color(0xFFe65c00)),
                      textAlign: TextAlign.justify),
                ),
                const ListTile(
                  title: Text(
                      'Periods and fertility in the menstrual cycle - NHS (www.nhs.uk).\n\nAll images and graphics are copyright protected.',
                      textAlign: TextAlign.justify),
                ),
                const ListTile(
                  title: Text(
                    'Disclaimer:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      //fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFe65c00),
                      shadows: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 1.0,
                          spreadRadius: 10.0,
                          blurStyle: BlurStyle.outer,
                          //offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    'This platform offers free sexual health information. When considering using one of the contraception methods,please undergo further exchange with a certified medical service.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Contact Us:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      //fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFe65c00),
                      shadows: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 1.0,
                          spreadRadius: 10.0,
                          blurStyle: BlurStyle.outer,
                          //offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const ListTile(
                  title: Text('info.shemasomo@gmail.com',
                      textAlign: TextAlign.justify,),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200.0),
                          child: Image.asset("assets/icons/instagram.png"),
                        ),
                      ),
                      onTap: () => launchUrlString(
                          "https://www.instagram.com/invites/contact/?i=xh9lnnbyrej9&utm_content=q23ytkz"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200.0),
                          child: Image.asset("assets/icons/facebook.png"),
                        ),
                      ),
                      onTap: () => launchUrlString(
                          "https://www.facebook.com/profile.php?id=100088403597701&is_tour_dismissed=true"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFF007ab9),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200.0),
                          child: Image.asset("assets/icons/linkedin.png",
                              fit: BoxFit.contain),
                        ),
                      ),
                      onTap: () => launchUrlString(
                          "https://www.linkedin.com/company/she-masomo/about/?viewAsMember=true"),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile buildListTile(BuildContext context, String name, IconData icon1) {
    return ListTile(
      trailing: Icon(icon1, color: const Color(0xFFe65c00), shadows: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 2.0,
          spreadRadius: 5.0,
          blurStyle: BlurStyle.outer,
          //offset: Offset(1.0, 1.0),
        ),
      ]),
      title: Text(
        name,
        textAlign: TextAlign.center,
        style: const TextStyle(
          //fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color(0xFFe65c00),
          shadows: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 1.0,
              spreadRadius: 10.0,
              blurStyle: BlurStyle.outer,
              //offset: Offset(1.0, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
