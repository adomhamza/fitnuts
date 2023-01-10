import 'package:fitnuts/content/content.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import 'recipes_detail.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
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
                'images/recipes.png',
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
          'Recipes',
          style: TextStyle(
            color: sirEdmund,
            fontFamily: 'BoldMonteserat',
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Center(
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 30,
              runSpacing: 30,
              direction: Axis.horizontal,
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
                  child: Stack(children: [
                    Container(
                      height: 215,
                      width: 103,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(item["Image"]),
                          opacity: 0.9,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 10),
                        child: Column(children: [
                          SizedBox(
                            width: 90,
                            child: Container(
                              color: Colors.grey.withOpacity(0.7),
                              child: Text(
                                item["Name"],
                                overflow: TextOverflow.visible,
                                style: const TextStyle(
                                  fontFamily: 'SemiBoldMonteserat',
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )
                  ]),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
