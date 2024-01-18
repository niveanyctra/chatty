import 'package:chatty/pages/chat.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF29CB9E),
        child: Icon(
          Icons.add,
          size: 34,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/profile_pic.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0XFF9ED0FF),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        // ListTile(
                        //   leading: Image.asset(
                        //     'assets/images/pp_friend1.png',
                        //     width: 55,
                        //     height: 55,
                        //   ),
                        //   title: Text('Joshuer'),
                        //   subtitle: Text("Sorry, you're no my ty.."),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/pp_friend1.png',
                                  width: 55,
                                  height: 55,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Joshuer',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Sorry you're not my ty..",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text('Now'),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/pp_friend2.png',
                                  width: 55,
                                  height: 55,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gabriella',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "I saw it clearly and mig...",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text('2:30'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Groups',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Chat()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/group1.png',
                                    width: 55,
                                    height: 55,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jakarta Fair',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "Why does everyone ca...",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text('11:11'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/group2.png',
                                  width: 55,
                                  height: 55,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Angga',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Here here we can go...",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text('7:11'),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/group3.png',
                                  width: 55,
                                  height: 55,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bentley',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "The car which does not...",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text('7:11'),
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
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Image.asset(
        //       'assets/images/profile_pic.png',
        //       width: 100,
        //       height: 100,
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     Text(
        //       'Sabrina Carpenter',
        //       style: TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.white,
        //       ),
        //     ),
        //     Text(
        //       'Travel Freelancer',
        //       style: TextStyle(
        //         fontSize: 16,
        //         fontWeight: FontWeight.w300,
        //         color: Color(0XFF9ED0FF),
        //       ),
        //     ),
        //   ],
        //   )
        //     SizedBox(
        //       height: 30,
        //     ),
        //     Container(
        //       width: double.infinity,
        //       decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.only(
        //           topLeft: Radius.circular(50),
        //           topRight: Radius.circular(50),
        //         ),
        //       ),
        //       child:
        //       Column(
        //         children: [
        //           SizedBox(
        //             height: 30,
        //           ),
        //           Padding(
        //             padding: EdgeInsets.symmetric(
        //               horizontal: 30,
        //             ),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   'Friends',
        //                   style: TextStyle(
        //                     fontSize: 16,
        //                     fontWeight: FontWeight.w500,
        //                   ),
        //                 ),
        //                 SizedBox(
        //                   height: 16,
        //                 ),
        //                 // ListTile(
        //                 //   leading: Image.asset(
        //                 //     'assets/images/pp_friend1.png',
        //                 //     width: 55,
        //                 //     height: 55,
        //                 //   ),
        //                 //   title: Text('Joshuer'),
        //                 //   subtitle: Text("Sorry, you're no my ty.."),
        //                 // ),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Row(
        //                       children: [
        //                         Image.asset(
        //                           'assets/images/pp_friend1.png',
        //                           width: 55,
        //                           height: 55,
        //                         ),
        //                         SizedBox(
        //                           width: 12,
        //                         ),
        //                         Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               'Joshuer',
        //                               style: TextStyle(
        //                                 fontSize: 16,
        //                                 fontWeight: FontWeight.w500,
        //                               ),
        //                             ),
        //                             Text(
        //                               "Sorry you're not my ty..",
        //                               style: TextStyle(
        //                                 fontSize: 14,
        //                                 fontWeight: FontWeight.w400,
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                     Text('Now'),
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 16,
        //                 ),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Row(
        //                       children: [
        //                         Image.asset(
        //                           'assets/images/pp_friend2.png',
        //                           width: 55,
        //                           height: 55,
        //                         ),
        //                         SizedBox(
        //                           width: 12,
        //                         ),
        //                         Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               'Gabriella',
        //                               style: TextStyle(
        //                                 fontSize: 16,
        //                                 fontWeight: FontWeight.w500,
        //                               ),
        //                             ),
        //                             Text(
        //                               "I saw it clearly and mig...",
        //                               style: TextStyle(
        //                                 fontSize: 14,
        //                                 fontWeight: FontWeight.w300,
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                     Text('2:30'),
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 30,
        //                 ),
        //                 Text(
        //                   'Groups',
        //                   style: TextStyle(
        //                     fontSize: 16,
        //                     fontWeight: FontWeight.w500,
        //                   ),
        //                 ),
        //                 SizedBox(
        //                   height: 16,
        //                 ),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Row(
        //                       children: [
        //                         Image.asset(
        //                           'assets/images/group1.png',
        //                           width: 55,
        //                           height: 55,
        //                         ),
        //                         SizedBox(
        //                           width: 12,
        //                         ),
        //                         Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               'Jakarta Fair',
        //                               style: TextStyle(
        //                                 fontSize: 16,
        //                                 fontWeight: FontWeight.w500,
        //                               ),
        //                             ),
        //                             Text(
        //                               "Why does everyone ca...",
        //                               style: TextStyle(
        //                                 fontSize: 14,
        //                                 fontWeight: FontWeight.w300,
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                     Text('11:11'),
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 16,
        //                 ),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Row(
        //                       children: [
        //                         Image.asset(
        //                           'assets/images/group2.png',
        //                           width: 55,
        //                           height: 55,
        //                         ),
        //                         SizedBox(
        //                           width: 12,
        //                         ),
        //                         Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               'Angga',
        //                               style: TextStyle(
        //                                 fontSize: 16,
        //                                 fontWeight: FontWeight.w500,
        //                               ),
        //                             ),
        //                             Text(
        //                               "Here here we can go...",
        //                               style: TextStyle(
        //                                 fontSize: 14,
        //                                 fontWeight: FontWeight.w400,
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                     Text('7:11'),
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 16,
        //                 ),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Row(
        //                       children: [
        //                         Image.asset(
        //                           'assets/images/group3.png',
        //                           width: 55,
        //                           height: 55,
        //                         ),
        //                         SizedBox(
        //                           width: 12,
        //                         ),
        //                         Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(
        //                               'Bentley',
        //                               style: TextStyle(
        //                                 fontSize: 16,
        //                                 fontWeight: FontWeight.w500,
        //                               ),
        //                             ),
        //                             Text(
        //                               "The car which does not...",
        //                               style: TextStyle(
        //                                 fontSize: 14,
        //                                 fontWeight: FontWeight.w400,
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                     Text('7:11'),
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
