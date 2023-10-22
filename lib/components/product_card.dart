import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 60,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5 ),
      child: Card(
        elevation: 10,
        child:  SizedBox(
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: product),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: product.id.toString(),
                        child: Image.asset(product.images[0]),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    maxLines: 2,
                  ),
                  Text(product.shortDescription, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.grey),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Precio: \$${product.price}",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )

          ),
        ),
      )

    );
  }
}
