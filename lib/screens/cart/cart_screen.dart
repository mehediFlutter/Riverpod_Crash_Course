import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/provider/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;
  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(reduceProductsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child:Column(
  children: cartProducts.map((product) {
    return InkWell(
      onTap: () {
        print('Price ${product.price}');
      },
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            Image.asset(product.image, height: 60, width: 60),
            Expanded(child: SizedBox()),
            Text("Tk: ${product.price}")
          ],
        ),
      ),
    );
  }).toList(),
)
      ),
    );
  }
}
