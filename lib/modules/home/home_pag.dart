import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/models/user.dart';
import 'package:instagram_ui/themes/app_color.dart';
import 'package:instagram_ui/themes/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: DarkTheme.white,
      //   title: SearchBar(),
      // ),
      body: Stack(
        children: [
          SearchBar(),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 68),
                  child: SizedBox(
                    height: 55,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: searchKeyWordsEnum.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 6),
                          child: GestureDetector(
                            onTap: () {
                              print('Search by key word');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Text(
                                      searchKeyWordsEnum[index],
                                      style: TxtStyle.headingCard,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: DarkTheme.textDisable,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(6))
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: DarkTheme.textDisable),
                    ),
                  ),
                ),
              ],
            )
          ),
          BottomBar(),
        ]
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32, left: 14, right: 14),
      color: DarkTheme.white,
      child: SizedBox(
        height: 36,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                  color: DarkTheme.textDisable,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 11, right: 11),
                      child: Image.asset(
                        AssetPath.iconSearchGreyMin,
                        width: 13.5,
                        height: 13.5,
                        fit:BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 24),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TxtStyle.headingCard,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Image.asset(
                AssetPath.iconLive,
                width: 20,
                height: 20,
                fit:BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: DarkTheme.textDisable),
              ),
            ),
            height: 50,
            width: double.infinity,
            child: Container(
              color: DarkTheme.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Image.asset(AssetPath.iconHomeBlack),
                  ),
                  Container(
                    child: Image.asset(AssetPath.iconSearchGrey),
                  ),
                  Container(
                    child: Image.asset(AssetPath.iconAddHome),
                  ),
                  Container(
                    child: Image.asset(AssetPath.iconLike),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(AssetPath.iconAvatar),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
