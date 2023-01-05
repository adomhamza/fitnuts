import 'package:fitnuts/content/content.dart';
import 'package:fitnuts/main_nav.dart';
import 'package:fitnuts/screens/articles_detail.dart';
import 'package:fitnuts/screens/recipes_detail.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [
    {"Title": "Israeli Shaksuka", "Poster": "images/israel.png"},
    {"Title": "Eggs with Spinanch & Tomatoes", "Poster": "images/spinanch.png"},
    {
      "Title": "Almond Milk Banana Oatmeal Smoothie",
      "Poster": "images/shaksuka.jpg"
    },
    {"Title": "Israeli Shaksuka", "Poster": "images/almond.png"},
    {
      "Title": "Almond Milk Banana Oatmeal Smoothie",
      "Poster": "images/shaksuka.jpg"
    },
    {"Title": "Israeli Shaksuka", "Poster": "images/almond.png"},
    {"Title": "Batman Returns", "Poster": "images/shaksuka.jpg"},
    {"Title": "Israeli Shaksuka", "Poster": "images/almond.png"},
    {
      "Title": "Almond Milk Banana Oatmeal Smoothie",
      "Poster": "images/shaksuka.jpg"
    },
    {"Title": "Israeli Shaksuka", "Poster": "images/almond.png"},
    {"Title": "Batman Returns", "Poster": "images/shaksuka.jpg"},
    {"Title": "Batman Returns", "Poster": "images/shaksuka.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: superSilver,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                'images/menu.png',
                color: sirEdmund,
              ),
              onPressed: () {
                // Scaffold.of(context).openDrawer();
              },
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: false,
        title: Text(
          'Welcome',
          style: TextStyle(
            color: sirEdmund,
            fontFamily: 'BoldMonteserat',
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'images/notify.png',
              color: sirEdmund,
            ),
            // tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30, top: 15),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 11,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'On The Menu Today',
                        style: TextStyle(
                          fontFamily: 'BoldMonteserat',
                          fontSize: 16,
                          color: sirEdmund,
                        ),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainNavBar(
                                          currentIndex: 1,
                                        )),
                              );
                            },
                            child: Text(
                              'View All',
                              style: TextStyle(
                                color: blueRaspberry,
                                fontSize: 14,
                                fontFamily: 'SemiBoldMulish',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: blueRaspberry,
                            size: 14,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 215,
                        // width: 340,
                        child: Row(
                          children: recipes.map((item) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RecipeDetailPage(
                                      content: item,
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Stack(children: [
                                  Container(
                                    height: 215,
                                    width: 103,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                          item["Image"],
                                        ),
                                        // opacity: 0.9,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 10),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              color:
                                                  Colors.grey.withOpacity(0.7),
                                              child: SizedBox(
                                                width: 90,
                                                child: Text(
                                                  item["Name"],
                                                  overflow:
                                                      TextOverflow.visible,
                                                  // textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                    fontFamily:
                                                        'SemiBoldMonteserat',
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ]),
                              ),
                            );
                          }).toList(),
                        ),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     GestureDetector(
                        //       onTap: () {
                        //         Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) =>
                        //                   const RecipeDetailPage()),
                        //         );
                        //       },
                        //       child: Stack(children: [
                        //         SizedBox(
                        //             height: 215,
                        //             width: 103,
                        //             child: Image.asset('images/israel.png')),
                        //         // const Positioned(
                        //         //   bottom: 0,
                        //         //   child: Text(
                        //         //     'Israeli',
                        //         //     textAlign: TextAlign.start,
                        //         //   ),
                        //         // ),

                        //         Positioned(
                        //           bottom: 0,
                        //           child: Padding(
                        //             padding: const EdgeInsets.only(
                        //                 left: 8.0, bottom: 10),
                        //             child: Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: const [
                        //                   SizedBox(
                        //                     width: 90,
                        //                     child: Text(
                        //                       'Israeli Shaksuka',
                        //                       overflow: TextOverflow.visible,
                        //                       // textAlign: TextAlign.start,
                        //                       style: TextStyle(
                        //                         fontFamily: 'SemiBoldMonteserat',
                        //                         fontSize: 12,
                        //                         color: Colors.white,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ]),
                        //           ),
                        //         )
                        //       ]),
                        //     ),
                        //     const SizedBox(
                        //       width: 14,
                        //     ),
                        //     Stack(children: [
                        //       Image.asset('images/spinanch.png'),
                        //       const Positioned(
                        //         bottom: 0,
                        //         child: Text(
                        //           'Israeli',
                        //           textAlign: TextAlign.start,
                        //         ),
                        //       ),
                        //       Positioned(
                        //         bottom: 0,
                        //         child: Padding(
                        //           padding: const EdgeInsets.only(
                        //               left: 8.0, bottom: 10),
                        //           child: Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: const [
                        //                 SizedBox(
                        //                   width: 90,
                        //                   child: Text(
                        //                     'Eggs with Spinanch & Tomatoes',
                        //                     overflow: TextOverflow.visible,
                        //                     // textAlign: TextAlign.start,
                        //                     style: TextStyle(
                        //                       fontFamily: 'SemiBoldMonteserat',
                        //                       fontSize: 12,
                        //                       color: Colors.white,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ]),
                        //         ),
                        //       )
                        //     ]),
                        //     const SizedBox(
                        //       width: 14,
                        //     ),
                        //     Stack(children: [
                        //       Image.asset(
                        //         'images/almond.png',
                        //       ),
                        //       const Positioned(
                        //         bottom: 0,
                        //         child: Text(
                        //           'Israeli',
                        //           textAlign: TextAlign.start,
                        //         ),
                        //       ),
                        //       Positioned(
                        //         bottom: 0,
                        //         child: Padding(
                        //           padding: const EdgeInsets.only(
                        //               left: 8.0, bottom: 10),
                        //           child: Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: const [
                        //                 SizedBox(
                        //                   width: 90,
                        //                   child: Text(
                        //                     'Almond Milk Banana Oatmeal Smoothie',
                        //                     overflow: TextOverflow.visible,
                        //                     style: TextStyle(
                        //                       fontFamily: 'SemiBoldMonteserat',
                        //                       fontSize: 12,
                        //                       fontWeight: FontWeight.w400,
                        //                       color: Colors.white,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ]),
                        //         ),
                        //       )
                        //     ]),
                        //   ],
                        // ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Must Read',
                      style: TextStyle(
                        fontFamily: 'BoldMonteserat',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: sirEdmund,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainNavBar(
                                        currentIndex: 2,
                                      )),
                            );
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                              color: blueRaspberry,
                              fontSize: 14,
                              fontFamily: 'SemiBoldMulish',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: blueRaspberry,
                          size: 14,
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: articles.map((e) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArticleDetailPage(e: e),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 20.0),
                        child: SizedBox(
                          width: 380,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 18.0),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(e["Image"]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      e["Topic"],
                                      maxLines: 2,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'SemiBoldMonteserat',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 13.0),
                                      child: Text(
                                        '2 Mins Read',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'RegularMonteserat',
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
