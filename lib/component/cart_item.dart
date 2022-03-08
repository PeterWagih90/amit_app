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
        padding: EdgeInsets.all(20),
        child: Column(
            children: [
              Row(
                  children: [
                    Image.network(
                      widget.cartItem.imagePath,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                      width: MediaQuery.of(context).size.width*.68,
                            child: Center(
                              child: Text(
                                widget.cartItem.productName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*.68
                          ,
                              child: Text(
                                widget.cartItem.description,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15,

                                ),
                              ),
                        ),
                        ],
                      ),
                    ),
                  ]),
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
              ),

            ])

    );
  }
}
