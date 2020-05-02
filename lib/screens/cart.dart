import 'package:flutter/material.dart';
import 'package:Sumbawa_food/screens/checkout.dart';
import 'package:Sumbawa_food/util/material.dart';
import 'package:Sumbawa_food/util/foods.dart';
import 'package:Sumbawa_food/widgets/cart_item.dart';
import 'package:Sumbawa_food/widgets/smooth_star_rating.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with AutomaticKeepAliveClientMixin<CartScreen >{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView.builder(
          itemCount: foods == null ? 0 :foods.length,
          itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
            Map food = foods[index];
//                print(foods);
//                print(foods.length);
            return CartItem(
              img: food['img'],
              isFav: false,
              name: food['name'],
              rating: 5.0,
              raters: 23,
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        tooltip: "Checkout",
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context){
                return Checkout();
              },
            ),
          );
        },
        child: Icon(
          Icons.arrow_forward,
        ),
        heroTag: Object(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
