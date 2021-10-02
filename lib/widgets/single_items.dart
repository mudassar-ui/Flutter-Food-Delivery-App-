import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color_config.dart';

class SingleItems extends StatelessWidget {
  bool isbool = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 100,
            child: Center(
              child: Image.network(
                  'https://pngimg.com/uploads/spinach/spinach_PNG10.png'),
            ),
          ),
        ),
        Expanded(
          child: Container(
            //margin: EdgeInsets.only(left: 10),
            height: 100,
            //width: double.infinity,
            child: Column(
              mainAxisAlignment: isbool
                  ? MainAxisAlignment.spaceAround
                  : MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Product Name',
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '50\$/50 Gram',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                isbool
                    ? Container(
                        margin: EdgeInsets.only(right: 15),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '50 Gram',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                            Center(
                              child: Icon(Icons.arrow_drop_down),
                            )
                          ],
                        ),
                      )
                    : Text('50 Gram'),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            padding: isbool
                ? EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                : EdgeInsets.only(left: 15, right: 15),
            child: isbool
                ? Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: primaryColor,
                            size: 20,
                          ),
                          Text(
                            'ADD',
                            style: TextStyle(color: primaryColor),
                          ),
                        ],
                      ),
                    ),
                  )
                : Column(
                    children: [
                      Icon(
                        Icons.delete,
                        size: 30,
                        color: Colors.black45,
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: primaryColor,
                                size: 20,
                              ),
                              Text(
                                'ADD',
                                style: TextStyle(color: primaryColor),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
          ),
        ),
        isbool
            ? Container()
            : Divider(
                height: 1,
                color: Colors.black45,
              ),
      ],
    );
  }
}
