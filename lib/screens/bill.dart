import 'package:flutter/material.dart';

class Billscrreen extends StatefulWidget {
  const Billscrreen({Key? key}) : super(key: key);

  @override
  State<Billscrreen> createState() => _BillscrreenState();
}

class _BillscrreenState extends State<Billscrreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xff3f3f3f),
      appBar: AppBar(
        elevation: 00,
        title: Text('User Screen'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "bill");
              },
              icon: Icon(Icons.next_plan_outlined)),
        ],
        backgroundColor: Color(0xff3f3f3f),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: double.infinity,
          color: Color(0xffffffff),
        ),
      ),
    ),);
  }
}
