import 'package:flutter/material.dart';
import 'package:sydelight/detail.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      ListItem("assets/images/list_item_whale.png"),
      ListItem("assets/images/list_item_hippocampus.png"),
      ListItem(null),
      ListItem(null),
      ListItem(null),
      ListItem(null),
      ListItem(null),
      ListItem(null),
      ListItem(null),
      ListItem(null),
      ListItem(null),
    ];

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
        actions: [
          IconButton(
            icon: Image.asset("assets/images/list_actions_lock.png"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: Image.asset("assets/images/list_actions_menu.png"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            color: Colors.black,
            height: 0.5,
          ),
          preferredSize: Size.fromHeight(1),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 150,
              ),
              itemBuilder: (context, index) {
                if (items[index].path != null) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const DetailWidget()),
                        );
                      },
                      child: Image.asset(
                        items[index].path!,
                        width: 100,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                } else {
                  return Container(
                    width: 100,
                    height: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color.fromRGBO(248, 248, 248, 1),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem {
  String? path;

  ListItem(this.path);
}
