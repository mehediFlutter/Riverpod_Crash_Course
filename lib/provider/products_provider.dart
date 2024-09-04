import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';
part 'products_provider.g.dart';

List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Grovy Shorts',
    price: 12,
    image: '$assetImage/shorts.png',
  ),
  Product(
    id: '2',
    title: 'Karati Kit',
    price: 34,
    image: '$assetImage/karati.png',
  ),
  Product(
    id: '3',
    title: 'Denim  Jeans',
    price: 54,
    image: '$assetImage/jeans.png',
  ),
  Product(
    id: '4',
    title: 'Red Backpack',
    price: 14,
    image: '$assetImage/backpack.png',
  ),
  Product(
    id: '5',
    title: 'Drum & Sticks',
    price: 29,
    image: '$assetImage/drum.png',
  ),
  Product(
    id: '6',
    title: 'Blue Suitcase',
    price: 44,
    image: '$assetImage/suitcase.png',
  ),
  Product(
    id: '7',
    title: 'Roller Skates',
    price: 52,
    image: '$assetImage/skates.png',
  ),
  Product(
    id: '8',
    title: 'Electric Guiter',
    price: 79,
    image: '$assetImage/guitar.png',
  ),
];

const String assetImage = "assets/products";

// final productsProvider = Provider((ref) {
//   return allProducts;
// });

// final reduceProductsProvider = Provider((ref) {
//   return allProducts.where((p) => p.price < 50).toList();
// });

@riverpod
List<Product> product(ref) {
  return allProducts;
}

@riverpod
List<Product> reduceProductsProvider(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}
