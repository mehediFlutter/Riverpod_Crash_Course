import 'package:flutter/material.dart';

class HomeScreen  extends  StatelessWidget {
  const HomeScreen  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage Sale Products'),
      //  actions: const[CartIcon()[]],
      ),
      body: GridView.builder(
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.9,
          ), 
        itemBuilder: (context , index){
          return Container(
            color: Colors.blueGrey.withOpacity(0.05),
          );
        }),
    );
  }
}