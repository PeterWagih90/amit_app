import 'package:amit_app/component/cart_item.dart';
import 'package:amit_app/module/cart_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final cartitems;

  CartScreen(this.cartitems, {Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
          children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.95,
            child: ListView.builder(
              itemCount: widget.cartitems.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return CartItemWidget(widget.cartitems[index], index);
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Center(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: RaisedButton(
                      child: Text("Button"),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      child: Text("Button"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          ],
          )),
    );
  }
}
