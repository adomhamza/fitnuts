import 'package:flutter/material.dart';

import '../const.dart';

class RecipeDetailPage extends StatefulWidget {
  RecipeDetailPage({super.key, required, required this.content});
  Map content;

  @override
  State<RecipeDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  List data = [
    {"Amount": "12", "Name": "Fat"},
    {"Amount": "45", "Name": "Carbs"},
    {"Amount": "36", "Name": "Protein"},
    {"Amount": "475", "Name": "Calories"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: superSilver,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                'images/arrow_back.png',
                color: sirEdmund,
              ),
              onPressed: () {
                Navigator.pop(context);
                // Scaffold.of(context).openDrawer();
              },
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Recipe',
          style: TextStyle(
            color: sirEdmund,
            fontFamily: 'BoldMonteserat',
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 15),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        // height: 215,
                        width: 338,
                        child: ClipRRect(
                            child: Image.asset(widget.content["Image"])),
                      ),
                      Positioned(
                          child: Padding(
                        padding: const EdgeInsets.only(
                          left: 13.0,
                          top: 13,
                        ),
                        child: Container(
                          color: Colors.grey.withOpacity(0.7),
                          child: SizedBox(
                            // width: 245,
                            child: Text(
                              widget.content["Name"],
                              overflow: TextOverflow.visible,
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'SemiBoldMonteserat',
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      )),
                      Positioned(
                        bottom: 0,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 14, bottom: 10.0),
                          child: Container(
                            color: Colors.black12.withOpacity(0.7),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: mandarin,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: mandarin,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: mandarin,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: mandarin,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: mandarin,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: mandarin,
                                    fontFamily: 'SemiBoldMonteserat',
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.access_time,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  '5 mins',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SemiBoldMonteserat',
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25, top: 25, bottom: 20),
                child: Center(
                  child: Container(
                    // height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 338,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 11.0,
                            right: 11,
                            top: 26,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: data.map((e) {
                              return Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  // color: const Color(0xFF979797),
                                  border: Border.all(
                                    color: const Color(0xFF979797),
                                    width: 0.5,
                                  ),
                                ),
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      e["Amount"],
                                      style: TextStyle(
                                        fontFamily: 'SemiBoldMonteserat',
                                        fontSize: 12,
                                        color: blueFire,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      e["Name"],
                                      style: TextStyle(
                                        fontFamily: 'RegularMonteserat',
                                        fontSize: 10,
                                        color: spanishGrey,
                                      ),
                                    ),
                                  ],
                                )),
                              );
                            }).toList(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20),
                          child: Text(
                            'Method',
                            style: TextStyle(
                              color: sirEdmund,
                              fontFamily: 'BoldMonteserat',
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            left: 20,
                            right: 20,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            width: 310,
                            child: Text(
                              widget.content["Method"],
                              style: TextStyle(
                                color: dutchBlue,
                                fontFamily: 'RegularMonteserat',
                                fontSize: 10,
                                height: 2.5,
                              ),
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
