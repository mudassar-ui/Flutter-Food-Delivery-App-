import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery_app/screens/Home/drawer_side.dart';
import 'package:food_delivery_app/product_overview.dart';
import 'package:food_delivery_app/screens/Home/single_product.dart';
import 'package:food_delivery_app/screens/search/search.dart';

class HomeScreen extends StatelessWidget {
  Widget _buidherbalFresh(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Herbs Seasoning'),
              Text('View all'),
            ],
          ),
        ),

        //items list hrizonattally
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: 'Basin Faris',
                          productImage:
                              'https://pngimg.com/uploads/spinach/spinach_PNG10.png',
                        ),
                      ),
                    );
                  },
                  title: 'Basin Farisssss',
                  imageUrl:
                      'https://pngimg.com/uploads/spinach/spinach_PNG10.png'),
              SingleProduct(
                  title: 'Basin Faris',
                  imageUrl:
                      'https://pngimg.com/uploads/spinach/spinach_PNG10.png'),
              SingleProduct(
                  title: 'Basin Faris',
                  imageUrl:
                      'https://pngimg.com/uploads/spinach/spinach_PNG10.png')
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildfruitFresh(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Fresh fruits'),
              Text('View all'),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: 'Basin Faris',
                          productImage:
                              'https://pngimg.com/uploads/spinach/spinach_PNG10.png',
                        ),
                      ),
                    );
                  },
                  title: 'Basin Faris',
                  imageUrl:
                      'https://pngimg.com/uploads/spinach/spinach_PNG10.png'),
              SingleProduct(
                  title: 'Basin Faris',
                  imageUrl:
                      'https://pngimg.com/uploads/spinach/spinach_PNG10.png'),
              SingleProduct(
                  title: 'Basin Faris',
                  imageUrl:
                      'https://pngimg.com/uploads/spinach/spinach_PNG10.png')
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xffd4d181),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.gohealthuc.com/sites/default/files/pictures/fruits-and-vegetables.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 60,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                color: Color(0xffd1ad17),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Text(
                                    'Vegi',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 5,
                                          offset: Offset(3, 3),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, right: 50),
                              child: Text(
                                '30% Off',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 5,
                                          offset: Offset(3, 3)),
                                    ]),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'on all vegetables products',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buidherbalFresh(context),
            _buildfruitFresh(context),
          ],
        ),
      ),
    );
  }
}
