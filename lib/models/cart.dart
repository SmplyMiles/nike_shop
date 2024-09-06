import 'package:flutter/widgets.dart';

import 'shoe.dart';


class Cart extends ChangeNotifier{
  // list of shoes for sale
 List<Shoe> shoeShop = [
 Shoe(
  name: 'Zone FREAK', 
  price: '236', 
  imagePath: 'assets/images/nikeshoe1.png', 
  description: 'The forward-thinking of his latest signature shoe',
  ),
  Shoe(
  name: 'Air Jordans', 
  price: '230', 
  imagePath: 'assets/images/nikeshoe2.png', 
  description: 'Take big leeps with jordan offical shoe',
  ),
  Shoe(
  name: 'KD Treys', 
  price: '240', 
  imagePath: 'assets/images/nikeshoe3.png', 
  description: 'You have got the hops and speed-lace up in shoe',
  ),
  Shoe(
  name: 'Travis Scott', 
  price: '400', 
  imagePath: 'assets/images/nikeshoe4.png', 
  description: 'Think Big with the king of mosh pit LAFLAME🔥',
  ),
 ];
  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }
 
  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }


}