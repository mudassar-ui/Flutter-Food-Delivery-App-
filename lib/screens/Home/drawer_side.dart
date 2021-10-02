import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/my_profile/my_profile.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile({IconData? icon, String? title, BuildContext? context}) {
    return ListTile(
      onTap: () {
        Navigator.of(context!).push(
          MaterialPageRoute(
            builder: (context) => MyProfile(),
          ),
        );
      },
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title!,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  // Widget listTile(
  //     {IconData? iconLead,
  //     IconData? iconTrail,
  //     String? title,
  //     String? subTitle}) {
  //   return ListTile(
  //     leading: Padding(
  //       padding: const EdgeInsets.only(top: 10),
  //       child: title != 'LOGOUT'
  //           ? Icon(iconLead)
  //           : Icon(
  //               iconLead,
  //               color: Colors.red,
  //             ),
  //     ),
  //     title: title != 'LOGOUT'
  //         ? Text(title!)
  //         : Text(
  //             title!,
  //             style: TextStyle(color: Colors.red),
  //           ),
  //     subtitle: Text(
  //       subTitle!,
  //       style: TextStyle(fontSize: 10),
  //     ),
  //     trailing: title != 'LOGOUT'
  //         ? Icon(iconTrail)
  //         : Icon(
  //             iconTrail,
  //             color: Colors.red,
  //           ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // return Drawer(
    //   child: Container(
    //     color: Color(0xffd1ad17),
    //     child: ListView(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Container(
    //             height: 80,
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: Color(0xfff2f2f2),
    //             ),
    //             child: Center(
    //               child: ListTile(
    //                 leading: CircleAvatar(
    //                   radius: 30,
    //                   backgroundColor: Color(0xffd1ad17),
    //                 ),
    //                 title: Text(
    //                   'MUDASSAR RAFIQUE KHAN',
    //                   style:
    //                       TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    //                 ),
    //                 subtitle: Text(
    //                   '8308909077',
    //                   style: TextStyle(fontWeight: FontWeight.bold),
    //                 ),
    //               ),
    //             ),
    //           ),

    //           //second section
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(top: 2, left: 10, right: 10),
    //           child: Container(
    //             height: 300,
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: Color(0xfff2f2f2),
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 listTile(
    //                     iconLead: Icons.email_outlined,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'UPI IDs',
    //                     subTitle: 'View all your UPI IDs'),
    //                 listTile(
    //                     iconLead: Icons.qr_code,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'QR Codes',
    //                     subTitle: 'View your QR Codes'),
    //                 listTile(
    //                     iconLead: Icons.settings,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'AutoPay Settings',
    //                     subTitle: 'Manage Your AutoPay Settings'),
    //                 listTile(
    //                     iconLead: Icons.notifications,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'Reminders',
    //                     subTitle: 'Never miss another bill payment'),
    //               ],
    //             ),
    //           ),
    //         ),

    //         //Third Section

    //         Padding(
    //           padding: EdgeInsets.only(top: 2, left: 10, right: 10),
    //           child: Container(
    //             height: 160,
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: Color(0xfff2f2f2),
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 listTile(
    //                     iconLead: Icons.language_outlined,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'Languages',
    //                     subTitle: 'Chosen Language: English'),
    //                 listTile(
    //                     iconLead: Icons.receipt_outlined,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'Bill Notifications',
    //                     subTitle: 'Receive alerts when bill is generated'),
    //               ],
    //             ),
    //           ),
    //         ),

    //         //Fourth Section

    //         Padding(
    //           padding: EdgeInsets.only(top: 2, left: 10, right: 10),
    //           child: Container(
    //             height: 230,
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: Color(0xfff2f2f2),
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 listTile(
    //                     iconLead: Icons.screen_lock_portrait_outlined,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'Screen Lock',
    //                     subTitle: 'Biometric & Screen locks'),
    //                 listTile(
    //                     iconLead: Icons.password_outlined,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'Set Up Password',
    //                     subTitle: 'Secure your account with a password'),
    //                 listTile(
    //                     iconLead: Icons.block_outlined,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'Block Contacts',
    //                     subTitle: 'Receive alerts when bill is generated'),
    //               ],
    //             ),
    //           ),
    //         ),

    //         //Fifth Section

    //         Padding(
    //           padding: EdgeInsets.only(top: 2, left: 10, right: 10),
    //           child: Container(
    //             height: 90,
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: Color(0xfff2f2f2),
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 listTile(
    //                     iconLead: Icons.mobile_friendly,
    //                     iconTrail: Icons.arrow_forward_ios_outlined,
    //                     title: 'About PhonePe',
    //                     subTitle: 'Privacy policy,Terms & About PhonePe'),
    //               ],
    //             ),
    //           ),
    //         ),

    //         //Sixth Section

    //         Padding(
    //           padding: EdgeInsets.only(top: 2, left: 10, right: 10),
    //           child: Container(
    //             height: 90,
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: Color(0xfff2f2f2),
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 listTile(
    //                     iconLead: Icons.logout_outlined,
    //                     iconTrail: Icons.arrow_forward_ios,
    //                     title: 'LOGOUT',
    //                     subTitle: 'LogOut from here'),
    //               ],
    //             ),
    //           ),
    //         ),

    //         SizedBox(
    //           height: 20,
    //         )
    //       ],
    //     ),
    //   ),
    // );
    return Drawer(
      child: Container(
        color: Color(0xffd1ad17),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome Guest'),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text('Login'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(width: 2),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            listTile(icon: Icons.home_outlined, title: 'Home'),
            listTile(icon: Icons.shop_outlined, title: 'Review Crat'),
            listTile(
                icon: Icons.person_outlined,
                title: 'My Profile',
                context: context),
            listTile(
                icon: Icons.notifications_outlined, title: 'Notifications'),
            listTile(icon: Icons.star_outline, title: 'Rating & Review'),
            listTile(icon: Icons.favorite_outline, title: 'Wishlist'),
            listTile(icon: Icons.copy_outlined, title: 'Raise a Complaint'),
            listTile(icon: Icons.format_quote_outlined, title: 'FAQs'),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact Support'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Call us:'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+910000000000',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Mail us:'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'abc@gmail.com',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Version.1',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
