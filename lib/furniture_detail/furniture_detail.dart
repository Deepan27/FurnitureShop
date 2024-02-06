import 'package:flutter/material.dart';
import 'package:furniture_shop/home/model/furniture.dart';

class FurnitureDetail extends StatelessWidget {

  final Furniture furniture;

  const FurnitureDetail({super.key, required this.furniture});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(furniture.imageUrl),
                fit: BoxFit.fill,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
