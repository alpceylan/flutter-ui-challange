import 'package:flutter/material.dart';

// Models
import '../models/product.dart';

class ShowcaseItem extends StatelessWidget {
  final double deviceHeight;
  final double deviceWidth;
  final Product product;

  ShowcaseItem({
    this.deviceHeight,
    this.deviceWidth,
    this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: deviceHeight * 0.4,
          width: deviceWidth * 0.5,
          margin: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.02,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: deviceHeight * 0.33,
                width: deviceWidth * 0.5,
                padding: EdgeInsets.only(
                  top: deviceHeight * 0.032,
                  bottom: deviceHeight * 0.01,
                  right: deviceWidth * 0.05,
                  left: deviceWidth * 0.03,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                product.title,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'by ${product.seller}',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: deviceHeight * 0.015,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$${product.price}',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 24,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6),
                                  ),
                                ),
                                height: deviceHeight * 0.05,
                                width: deviceWidth * 0.1,
                                child: Icon(
                                  Icons.shopping_basket,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.15,
          left: deviceWidth * 0.03,
          child: Container(
            height: deviceHeight * 0.233,
            width: deviceWidth * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
