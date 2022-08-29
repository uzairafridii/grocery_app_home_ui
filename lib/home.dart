import 'package:flutter/material.dart';
import 'package:grocery_app_ui/component/item_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text('Grocery App'),
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu_outlined,
          color: Colors.black,
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              const IconButton(onPressed: null, icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
              ,
              Positioned(
                top: 0,
                right: 3,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: const Text(
                    '2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w800,),
                  ),
                ),
              )
            ],
          )
        ],
      ),

      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 0.6),

          children: [
            ItemCard(imageName: 'assets/img1.png', title: 'Bayam',),
            ItemCard(imageName: 'assets/img2.png', title: 'Alpukat',),
            ItemCard(imageName: 'assets/img3.png', title: 'Jagung',),
            ItemCard(imageName: 'assets/img4.png', title: 'Kiwi',),
            ItemCard(imageName: 'assets/img6.png', title: 'Apple',),
            ItemCard(imageName: 'assets/img1.png', title: 'Bayam',),
            ItemCard(imageName: 'assets/img2.png', title: 'Alpukat',),
            ItemCard(imageName: 'assets/img3.png', title: 'Jagung',),
            ItemCard(imageName: 'assets/img4.png', title: 'Kiwi',),
            ItemCard(imageName: 'assets/img6.png', title: 'Apple',)
          ],
        ),
      ),
    );
  }
}
