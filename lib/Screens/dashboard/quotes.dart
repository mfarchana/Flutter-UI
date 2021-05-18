import 'package:books_app/constants/Colors.dart';
import 'package:books_app/models/quote.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quotes extends StatelessWidget {
  Quotes({Key key}) : super(key: key);
  final Quote quote = Quote().getQuote();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: <Widget>[
          Text(
            '\"${quote.text}\"',
            softWrap: true,
            maxLines: 3,
            overflow: TextOverflow.visible,
            style: GoogleFonts.lato(color: blackButton, fontSize: 23, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '-${quote.author}',
              style: GoogleFonts.lato(color: blackButton, fontSize: 14),
            ),
          )
        ]),
      ),
    );
  }
}
