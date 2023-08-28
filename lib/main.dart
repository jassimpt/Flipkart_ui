import 'package:flipkart_ui/widgets/bottomnav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flipkart Ui',
      home: Bottomnav(),
    );
  }
}
