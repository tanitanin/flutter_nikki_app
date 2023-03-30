import 'package:flutter/material.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key, required this.nextWidget}) : super(key: key);

  final Widget nextWidget;

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  MySplash get w => widget;

  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Nikki App',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _navigateToNext() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => w.nextWidget));
  }
}
