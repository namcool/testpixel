import 'dart:io';

import 'package:flutter/material.dart';
import 'package:screen/screen.dart';
import 'package:testpixel/constants/colors_list.dart';

class TestPixelPage extends StatefulWidget {
  @override
  _TestPixelPageState createState() => _TestPixelPageState();
}

class _TestPixelPageState extends State<TestPixelPage> {
  Color color;
  int index;
  List<Color> colors = ColorsList.colors;

  @override
  void initState() {
    super.initState();

    color = colors[0];
    index = 0;
    Screen.setBrightness(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: color,
            body: GestureDetector(
              child: index == colors.length - 1 ? InkWell(
                child: Center(
                  child: Text('Done! One more tap to close the app.', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                ),
                onTap: () {
                  exit(0);
                },
              ): null,
              onTap: () {
                index++;
                if (index < colors.length) {
                  setState(() {
                    color = colors[index];
                  });
                }
              },
            ),
          );
  }
}