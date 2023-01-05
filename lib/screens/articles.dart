import 'package:fitnuts/content/content.dart';
import 'package:fitnuts/screens/articles_detail.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../const.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
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
                'images/articles.png',
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
          'Articles',
          style: TextStyle(
            color: sirEdmund,
            fontFamily: 'BoldMonteserat',
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: articles.map((e) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => ArticleDetailPage(e: e)),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 340,
                    // height: 379,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(e["Image"])),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 11.0),
                                  child: Text(
                                    e["Topic"],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'SemiBoldMonteserat',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 13.0,
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: ReadMoreText(
                                    e["Read More"],
                                    trimCollapsedText: 'Read More',
                                    trimExpandedText: 'Show Less',
                                    trimLines: 4,
                                    trimMode: TrimMode.Line,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'RegularMonteserat',
                                        color: Colors.black,
                                        height: 1.5),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),

            // Padding(
            //   padding: const EdgeInsets.only(left: 25.0, right: 25, top: 15),
            //   child: SizedBox(
            //     width: 340,
            //     height: 379,
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(5),
            //         color: Colors.white,
            //       ),
            //       child: Column(
            //         children: [
            //           Image.asset('images/article2_bg.png'),
            //           Column(
            //             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               const Padding(
            //                 padding: EdgeInsets.only(top: 11.0),
            //                 child: Text(
            //                   '5 Tips For A Healthier Approach To\n Food',
            //                   style: TextStyle(
            //                     fontSize: 14,
            //                     fontFamily: 'SemiBoldMonteserat',
            //                     color: Colors.black,
            //                   ),
            //                 ),
            //               ),
            //               const Padding(
            //                 padding: EdgeInsets.only(top: 13.0),
            //                 child: Text(
            //                   'We set the record straight on some of the top\n nutritional misconceptions of today',
            //                   textAlign: TextAlign.left,
            //                   style: TextStyle(
            //                     fontSize: 12,
            //                     fontFamily: 'RegularMonteserat',
            //                     color: Colors.black,
            //                   ),
            //                 ),
            //               ),
            //               const Padding(
            //                 padding: EdgeInsets.only(top: 13.0),
            //                 child: Text(
            //                   'Whether it’s via social media, the newspapers, or',
            //                   textAlign: TextAlign.left,
            //                   style: TextStyle(
            //                     fontSize: 12,
            //                     fontFamily: 'RegularMonteserat',
            //                     color: Colors.black,
            //                   ),
            //                 ),
            //               ),
            //               Row(
            //                 mainAxisSize: MainAxisSize.min,
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   const Text(
            //                     'simply word of mouth',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontFamily: 'RegularMonteserat',
            //                       color: Colors.black,
            //                     ),
            //                   ),
            //                   const SizedBox(
            //                     width: 5,
            //                   ),
            //                   Text(
            //                     'Read More',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontFamily: 'SemiBoldMonteserat',
            //                       color: blueRaspberry,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
