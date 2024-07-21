import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Click Detection App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print('User clicked on the image.');
              },
              child: Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-bg-1e3a0e1b8fadb4f7b1ab58d7095d1078f1d8eaf4c0d9f85b5e0b73e3f20af0df.png',
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print('User clicked on the logo.');
              },
              child: FlutterLogo(size: 100),
            ),
          ],
        ),
      ),
    );
  }
}
