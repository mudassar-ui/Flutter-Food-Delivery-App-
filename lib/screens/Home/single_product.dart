import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  final VoidCallback? onTap;

  SingleProduct({this.title, this.imageUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                  onTap: onTap,
                  child: Container(child: Image.network(imageUrl!))),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '50\$/50 Gram',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  // outline button code
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Text(
                                        '50 Gram',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Expanded(
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Colors.orange,
                                ),
                                Text('1'),
                                Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Container(
                  //         height: 20,
                  //         width: 120,
                  //         child: OutlineButton(
                  //           onPressed: () {},
                  //           child: Row(
                  //             children: [
                  //               Expanded(
                  //                   child: Text(
                  //                 '50 Gram',
                  //                 style: TextStyle(fontSize: 6),
                  //               )),
                  //               Expanded(
                  //                 child: Icon(
                  //                   Icons.arrow_drop_down,
                  //                   size: 20,
                  //                   color: Colors.yellow,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Container(
                  //         height: 20,
                  //         width: 120,
                  //         child: OutlineButton(
                  //           onPressed: () {},
                  //           child: Row(
                  //             children: [
                  //               Expanded(child: Text('50 Gram')),
                  //               Expanded(
                  //                 child: Icon(
                  //                   Icons.arrow_drop_down,
                  //                   size: 20,
                  //                   color: Colors.yellow,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
