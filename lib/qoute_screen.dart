import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

class QuoteScreen extends StatefulWidget {
  final String name;

  const QuoteScreen({Key? key, required this.name}) : super(key: key);

  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  String quote = "";

  final List<String> allQuotes = [
    "Wishing you a Christmas filled with love, joy, and warmth.",
    "Why did Santa go to music school? To improve his wrapping skills!",
    "Love is not about how many days, months, or years you have been together. It's about how much you love each other every single day.",
    "I told myself I needed a break, and now I can't stop sending myself vacation ads.",
    "Christmas is the season when you buy this year's gifts with next year's money.",
    "May your heart be light, your season be bright, and your Christmas be merry.",
    "You are the peanut butter to my jelly, the smile to my face, and the beat to my heart.",
    "I'm on a diet, the kind where I watch my food and wish it was a pizza.",
    "I'm dreaming of a white Christmas, but if the white runs out, I'll drink the red.",
    "You devour everything like there's no tomorrow.",
    "Your cooking is so bad, it could make a vegetarian cry.",
    "The best gift around the Christmas tree is the presence of family wrapped in love.",
    "In your arms, I've found my forever home.",
    "I'm not lazy; I'm just in energy-saving mode, conserving my efforts for important things, like deciding what to watch on Netflix.",
    "May your days be merry and bright, and may all your Christmases be white.",
    "Love is not finding someone to live with; it's finding someone you can't imagine living without.",
    "I told myself to embrace my mistakes. I gave myself a hug, but now we're not on speaking terms.",
    "I'm reading a book on anti-gravity. It's so good; I just can't put myself down!",
    "Your face is so oily, you could fry an egg on it.",
    "You're about as interesting as watching paint dry.",
    "I asked Santa for a treadmill, but I guess he thought I said 'beer fridge.'",
    "Sending you warmest wishes for a holiday filled with love and happiness.",
    "You're not my number one; you're my only one.",
    "Santa's elves are just a bunch of subordinate Clauses.",
    "Christmas is a time of magic and joy, a time to share moments with those we hold dear.",
    "Love is the key that opens the door to happiness.",
    "You're so predictable, even your goldfish knows what you're going to do next.",
    "You're about as sweet as a bowl of sour grapes.",
    "Why did the Christmas tree go to the barber? It needed a trim!",
    "May the spirit of Christmas bring you peace, the gladness of Christmas give you hope, and the warmth of Christmas grant you love.",
    "Love is the key that opens the door to happiness.",
    "Every love story is beautiful, but ours is my favorite.",
    "I'm not clumsy. The floor just hates me, the table and chairs are bullies, and the walls get in my way.",
    "I'm not saying I'm old, but I remember when emojis were called 'hieroglyphics.'",
    "What do you get if you cross a snowman and a vampire? Frostbite!",
    "Wishing you a Christmas that's merry and bright, just like your smile.",
    "I fell in love with you because of the million things you never knew you were doing.",
    "May your heart be as light as the snowflakes, and your spirit as bright as the Christmas lights.",
    "Being with you makes all the cloudy days seem sunny.",
    "You are my today and all of my tomorrows.",
    "During this festive season, may the joy of giving and the warmth of friendship fill your heart with happiness.",
    "I'm on a whiskey diet. I've lost three days already."
  ];

  void generateRandomQuote() {
    quote = allQuotes[Random().nextInt(allQuotes.length)];
  }

  void _showQuoteDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            decoration: BoxDecoration(
              color: Color(0xffc63026),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Santa Quote',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    quote,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Close',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc63026),
        title: Text(
          "Hey, ${widget.name}!",
          // style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Merry Christmas!",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              "Choose a santa box",
              style: TextStyle(fontSize: 19),
            ),
            SizedBox(height: 20),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Ink.image(
                  image: AssetImage("assets/images/gift.png"),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {
                      generateRandomQuote();
                      _showQuoteDialog();
                      setState(() {});
                    },
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
