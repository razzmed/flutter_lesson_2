import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/productCard.dart';

class ProductApp extends StatelessWidget {
  
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Товары"),
          backgroundColor: Colors.yellow,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              // ----------------------- ПЕРВАЯ СТРОКА -----------------------
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      image: "images/nike.jpeg",
                      title: "Nike Air Max",
                      price: "\$120",
                      sale: true,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProductCard(
                      image: "images/leatherbag.jpg",
                      title: "Leather Bag",
                      price: "\$85",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // ----------------------- ВТОРАЯ СТРОКА -----------------------
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      image: "images/headphones.jpg",
                      title: "Headphones",
                      price: "\$210",
                      sale: true,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProductCard(
                      image: "images/smartwatch.jpg",
                      title: "Smart Watch",
                      price: "\$150",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
