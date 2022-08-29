import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  ItemCard({Key? key, required this.imageName , required this.title}) : super(key: key);
  String imageName;
  String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4,
      child: Column(
        children: [
          const SizedBox(height: 20,),
          SizedBox(height: 180,
          child:  Image.asset(imageName),),
          const SizedBox(
            height: 12,
          ),

          Text(title,style: const TextStyle(
              color: Colors.green,
            fontSize: 22.0,
          ),),
          const SizedBox(
            height: 12,
          ),
         const Divider(
            height: 1,
            color: Colors.grey,
            thickness:1.0,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 6.0,top: 0, right: 6.0, bottom:  0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(Icons.shopping_cart_checkout_rounded, color: Colors.green,),
                Text('Beli', style: TextStyle(color: Colors.green, fontSize: 18.0),),
                IconButton(onPressed: null, icon: Icon(Icons.remove_circle_outline, color: Colors.green,)),
                Text('0', style: TextStyle(color: Colors.green, fontSize: 18.0),),
                IconButton(onPressed: null, icon: Icon(Icons.add_circle_outline, color: Colors.green,)),
              ],
            ),
          )

        ],
      ),
    );
  }
}

