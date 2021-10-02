import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color_config.dart';
import 'package:food_delivery_app/widgets/single_items.dart';

class ReviewCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text('Total Amount'),
        subtitle: Text(
          '\$ 170.00',
          style: TextStyle(color: Colors.green[900]),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text('Submit'),
            color: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {},
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Review Cart',
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SingleItems(
            isbool: true,
          ),
          SingleItems(
            isbool: true,
          ),
          SingleItems(
            isbool: true,
          ),
          SingleItems(
            isbool: true,
          ),
          SingleItems(
            isbool: true,
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
