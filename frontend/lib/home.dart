import 'package:flutter/material.dart';
import 'package:sydelight/menu.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      HomeItem("자동차"),
      HomeItem("자동차"),
      HomeItem("자동차"),
      HomeItem("자동차"),
      HomeItem("자동차"),
      HomeItem("자동차"),
      HomeItem("자동차"),
      HomeItem("자동차"),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(251, 67, 87, 1),
        title: Image.asset(
          "assets/images/logo.png",
          width: 90,
          fit: BoxFit.fitWidth,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/menu.png',
              width: 22,
              fit: BoxFit.fitWidth,
            ),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const MenuWidget()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '지은채님이 최근에 본 단어카드',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.375,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 100,
                          height: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Color.fromRGBO(248, 248, 248, 1),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(items[index].name),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                height: 103,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Image1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeItem {
  String name;

  HomeItem(this.name);
}
