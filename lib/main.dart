import 'package:flutter/cupertino.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      //Configure a Theme
      theme: CupertinoThemeData(
        //Primary color used for icons, text field cursor,...,etc.
        primaryColor: CupertinoColors.systemOrange,
        //Screen Top App Bar
        barBackgroundColor: CupertinoColors.systemGreen,
        //Screen background
        scaffoldBackgroundColor: CupertinoColors.systemGrey6,
      ),
      debugShowCheckedModeBanner: false, //remove debug banner
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String currentJob = 'Android or iOS Developer';
  bool isButtonPressed = false;

  void _updateText() {
    setState(() {
      currentJob = 'Mobile Developer';
      isButtonPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Guess the job?'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentJob,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            CupertinoButton(
              child: Text('Show the Answer'),
              //When you pass 'null' to onPressed, it disables the button
              onPressed: isButtonPressed ? null : _updateText,
            ),
            Icon(CupertinoIcons.up_arrow),
          ],
        ),
      ),
    );
  }
}
