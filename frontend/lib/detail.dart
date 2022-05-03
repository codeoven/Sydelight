import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("assets/images/list_navigate_back.png"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0,
        title: const Text(
          "바닷속 동물",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/detail_item_1.png",
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
