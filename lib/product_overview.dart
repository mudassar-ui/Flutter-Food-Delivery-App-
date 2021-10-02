import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color_config.dart';

enum singleCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final String? productName;
  final String? productImage;

  ProductOverview({this.productName, this.productImage});
  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  singleCharacter _character = singleCharacter.fill;

  Widget bottomNavigationBar(
      {Color? backgrounfColor,
      Color? iconColor,
      Color? color,
      String? title,
      IconData? iconData}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: backgrounfColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title!,
              style: TextStyle(
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationBar(
            backgrounfColor: textColor,
            iconColor: Colors.grey,
            color: Colors.white70,
            title: "Add to WishList",
            iconData: Icons.favorite_outline,
          ),
          bottomNavigationBar(
            backgrounfColor: primaryColor,
            iconColor: Colors.white70,
            color: textColor,
            title: "Go to Cart",
            iconData: Icons.shop_outlined,
          ),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: textColor,
        ),
        title: Text('Product Overview'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.productName!),
                    subtitle: Text('\$50'),
                  ),
                  Container(
                    height: 220,
                    padding: EdgeInsets.all(40),
                    child: Image.network(widget.productImage!),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Text(
                      'Avauable Options',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green,
                            ),
                            Radio(
                              value: singleCharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                setState(() {
                                  _character = value as singleCharacter;
                                });
                              },
                            ),
                          ],
                        ),
                        Text('\$50'),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 15,
                                color: primaryColor,
                              ),
                              Text(
                                'ADD',
                                style: TextStyle(color: primaryColor),
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
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About This Product',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Brasil is good for health.it provide alot of benefits to our body.it contains various vitamins and minerals',
                    style: TextStyle(
                      fontSize: 15,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
