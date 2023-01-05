import 'package:flutter/material.dart';

import '../const.dart';

class ArticleDetailPage extends StatefulWidget {
  ArticleDetailPage({super.key, required this.e});
  Map e;

  @override
  State<ArticleDetailPage> createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {
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
          'Article',
          style: TextStyle(
            color: sirEdmund,
            fontFamily: 'BoldMonteserat',
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25.0, right: 25, top: 15, bottom: 30),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  // height: 231,
                  child: Image.asset(widget.e["Image"]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 19.0),
                  child: SizedBox(
                    width: 340,
                    child: Text(
                      widget.e["Topic"],
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'SemiBoldMonteserat',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: SizedBox(
                    width: 340,
                    child: Text(
                      widget.e["Body"],
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'RegularMonteserat',
                        color: dutchBlue,
                        height: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
