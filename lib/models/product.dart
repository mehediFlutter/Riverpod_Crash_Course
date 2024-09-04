import 'package:riverpod_annotation/riverpod_annotation.dart';


class Product {
  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.image});
  final String id;
  final String title;
  final int price;
  final String image;
}

