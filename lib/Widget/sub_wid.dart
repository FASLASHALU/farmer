import 'package:flutter/material.dart';

class sub_wid extends StatefulWidget {
  const sub_wid({super.key});

  @override
  State<sub_wid> createState() => _sub_widState();
}

class _sub_widState extends State<sub_wid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('images/basket_1.jpg'),
          ),
          Text(
            'How its Works',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Manage your weekly vegetable subscription hassle free',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    ) ;
  }
}