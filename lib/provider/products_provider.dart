 import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

 List<Product> allProducts = [
  Product(id: '1', title: 'Grovy Shorts', price: 12, image: '$assetImage/shorts.png',),
  Product(id: '2', title: 'Karati Kit', price: 34, image: '$assetImage/karati.png',),
  Product(id: '3', title: 'Denim  Jeans', price: 54, image: '$assetImage/jeans.png',),
  Product(id: '4', title: 'Red Backpack', price: 14, image: '$assetImage/backpack.png',),
  Product(id: '5', title: 'Drum & Sticks', price: 29, image: '$assetImage/drum.ong',),
  Product(id: '6', title: 'Blue Suitcase', price: 44, image: '$assetImage/suitcase.png',),
  Product(id: '7', title: 'Roller Skates', price: 52, image: '$assetImage/skates.png',),
  Product(id: '8', title: 'Electric Guiter', price: 79, image: '$assetImage/guiter.png',),
];

const String assetImage="assets/products";

final productsProvider = Provider((ref) {
  return allProducts;
});

final reduceProductsProvider = Provider((ref){
  return allProducts.where((p) => p.price < 50).toList();
});
