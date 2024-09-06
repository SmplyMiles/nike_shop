import 'package:flutter/material.dart';
import '../models/shoe.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
Shoe shoe;
  CartItem({super.key, required this.shoe,});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
        onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}