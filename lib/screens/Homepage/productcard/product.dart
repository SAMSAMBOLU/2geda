import 'package:flutter/material.dart';

class Product {
  final String title;
  final String imageUrl;
  final String postedBy;
  final String timePosted;
  final double starRating;
  final double price;

  Product({
    required this.title,
    required this.imageUrl,
    required this.postedBy,
    required this.timePosted,
    required this.starRating,
    required this.price,
  });
}



class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:MediaQuery.of(context).size.width*0.8,
      height: MediaQuery.of(context).size.height*0.4,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.white,
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${product.postedBy}}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('${product.timePosted}')
                ],
              ),
            ),
            Center(child: Image.asset(product.imageUrl)),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                product.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFF8A15),
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '${product.starRating}',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
