import 'package:amit_app/module/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatefulWidget {
  int index;

  CartItem cartItem;

  CartItemWidget(this.cartItem, this.index, {Key? key}) : super(key: key);

  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: [
          Image.network(widget.cartItem.imagePath,width: 100,height: 100,),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(widget.cartItem.productName),
              Text(widget.cartItem.description),
              Row(
                children: [
                  Text(
                      "${widget.cartItem.price} ${widget.cartItem.currency.toUpperCase()}"),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          widget.cartItem.amount--;
                        });
                      },
                      child: Text("-")),
                  Text("${widget.cartItem.amount}"),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          widget.cartItem.amount++;
                        });
                      },
                      child: Text("+"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
