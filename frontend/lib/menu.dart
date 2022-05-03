import 'package:flutter/material.dart';
import 'package:sydelight/list.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items1 = [
      MenuItem("육지동물", "assets/images/Image6.png"),
      MenuItem("바닷속동물", "assets/images/Image2.png"),
      MenuItem("과일", ""),
      MenuItem("채소", ""),
      MenuItem("자동차", ""),
      MenuItem("악기", ""),
      MenuItem("숫자", ""),
      MenuItem("한글", ""),
    ];
    final items2 = [
      MenuItem("아기돼지삼형제", ""),
      MenuItem("콩쥐팥쥐", ""),
      MenuItem("미운아기오리", ""),
      MenuItem("빨간모자", ""),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          width: 90,
          fit: BoxFit.fitWidth,
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(251, 67, 87, 1),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Image.asset("assets/images/menu_bell.png"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: Image.asset("assets/images/menu_close.png"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            color: const Color.fromRGBO(251, 67, 87, 1),
            child: Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    height: 22,
                    color: const Color.fromRGBO(251, 67, 87, 1),
                  ),
                  Center(
                    child: Column(
                      children: [
                        MaterialButton(
                          elevation: 0,
                          height: 56,
                          onPressed: () {},
                          child: Image.asset(
                            "assets/images/menu_profile.png",
                          ),
                          shape: const CircleBorder(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "지은채",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "648",
                            style: TextStyle(color: Color.fromRGBO(241, 49, 138, 1)),
                            children: [
                              TextSpan(
                                text: '일 - 만 21개월',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          preferredSize: const Size.fromHeight(120),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "단어카드",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          "assets/images/menu_line.png",
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset(
                              "assets/images/settings.png",
                              width: 12,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Text("한글모드"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: items1.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 68,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Column(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(items1[index].image), fit: BoxFit.fill),
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                color: Color.fromRGBO(248, 248, 248, 1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                items1[index].name,
                                style: const TextStyle(
                                  color: Color.fromRGBO(141, 141, 141, 1),
                                  fontSize: 9,
                                ),
                              ),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const ListWidget()),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "그림자놀이",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          "assets/images/menu_line.png",
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset(
                              "assets/images/settings.png",
                              width: 12,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Text("한글모드"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: items2.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 68,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Column(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(items2[index].image), fit: BoxFit.fill),
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                color: Color.fromRGBO(248, 248, 248, 1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                items2[index].name,
                                style: const TextStyle(
                                  color: Color.fromRGBO(141, 141, 141, 1),
                                  fontSize: 9,
                                ),
                              ),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const ListWidget()),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "고객서비스",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Image.asset("assets/images/menu_line_2.png"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: items2.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 40,
                    ),
                    itemBuilder: (context, index) {
                      String name;

                      switch (index) {
                        case 0:
                          name = "이벤트";
                          break;
                        case 1:
                          name = "고객센터";
                          break;
                        case 2:
                          name = "MY페이지";
                          break;
                        case 3:
                          name = "설정";
                          break;
                        default:
                          name = "";
                          break;
                      }

                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/menu_dot.png"),
                          ),
                          Text(name),
                        ],
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  String name;
  String image;

  MenuItem(this.name, this.image);
}
