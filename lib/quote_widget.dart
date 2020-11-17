import 'package:flutter/material.dart';
import 'quotes_list.dart';
import 'dart:math';
import 'constants.dart';

class QuoteWidget extends StatefulWidget {
  @override
  _QuoteWidgetState createState() => _QuoteWidgetState();
}

class _QuoteWidgetState extends State<QuoteWidget> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 30.0,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              " \"${quoteList[index]['text']}\" ",
              style: kQuoteStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              quoteList[index]['from'],
              style: kAuthorStyle,
              textAlign: TextAlign.right,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.shade200,
            ),
            // Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: FlatButton.icon(
                onPressed: _changeQuote,
                icon: Icon(
                  Icons.lightbulb,
                  color: Colors.yellowAccent,
                ),
                label: Text(
                  'Show me da way',
                  style: kButtonStyle,
                ),
                color: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeQuote() {
    setState(() {
      index = Random().nextInt(quoteList.length + 1);
      // print(quoteList.length);
    });
  }
}
