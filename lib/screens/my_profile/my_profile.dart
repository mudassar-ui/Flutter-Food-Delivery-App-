import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color_config.dart';
import 'package:food_delivery_app/screens/Home/drawer_side.dart';

class MyProfile extends StatelessWidget {
  Widget listTiles({IconData? icon, String? title}) {
    return Column(
      children: [
        Divider(),
        ListTile(
          leading: Icon(icon),
          title: Text(title!),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'My Profile',
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
      drawer: DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
              Container(
                height: 490,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mudassar Khan',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('mudassarkhan40@gmail.com'),
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: primaryColor,
                                child: CircleAvatar(
                                  radius: 12,
                                  child: Icon(
                                    Icons.edit,
                                    color: primaryColor,
                                  ),
                                  backgroundColor: scaffoldBackgroundColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    listTiles(icon: Icons.shop_outlined, title: 'My Orders'),
                    listTiles(
                        icon: Icons.location_on_outlined,
                        title: 'My Delivery Address'),
                    listTiles(
                        icon: Icons.person_outline, title: 'Refer a Friend'),
                    listTiles(
                        icon: Icons.file_copy_outlined,
                        title: 'Terms & Conditions'),
                    listTiles(
                        icon: Icons.policy_outlined, title: 'Privacy Policy'),
                    listTiles(icon: Icons.add_chart, title: 'About'),
                    listTiles(
                        icon: Icons.exit_to_app_outlined, title: 'Logout'),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 52,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: scaffoldBackgroundColor,
                backgroundImage: NetworkImage(
                  'https://s3.envato.com/files/328957910/vegi_thumb.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
