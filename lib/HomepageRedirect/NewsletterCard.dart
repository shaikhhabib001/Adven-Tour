import 'package:flutter/material.dart';

import 'Newsletter.dart';


class NewsletterCard extends StatelessWidget {
  const NewsletterCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Center(

      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(30.0),
        shape: RoundedRectangleBorder(
          side: BorderSide(

            //pink
            //color: Color(0xFFea86c2),
            //green
            //color: Color(0xFF6fd262),
            //amber
            color: Color(0xFFFFFFFF),

            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        child: Newsletter(),

      ),
    );

  }
}