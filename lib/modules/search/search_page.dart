import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/models/user.dart';
import 'package:instagram_ui/modules/common/bottom_bar.dart';
import 'package:instagram_ui/themes/app_color.dart';
import 'package:instagram_ui/themes/text_style.dart';

class SearchPage extends StatelessWidget {
  static const String routeName = '/SearchPage';
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                      child: index > 1 ? Text(
                                        searchKeyWordsEnum[index],
                                        style: TxtStyle.headingCard,
                                      ) : Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(right: 6),
                                              child: Image.asset(index == 0 ? AssetPath.iconRadioGrey : AssetPath.iconShoppingGrey),
                                            ),
                                            Text(
                                              searchKeyWordsEnum[index],
                                              style: TxtStyle.headingCard,
                                            )
                                          ],
                                        ),
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
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.333,
                                      child: Stack(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                  AssetPath.iconAvatar,
                                                  fit:BoxFit.fill
                                              ),
                                            ),
                                            Positioned(
                                                top: 10,
                                                right: 10,
                                                child: Container(
                                                  child: Image.asset(AssetPath.iconGallery),
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                    Container(
                                      child: Image.asset(
                                          AssetPath.iconAvatar,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.666,
                                child: Image.asset(
                                    AssetPath.imagePost1,
                                    fit:BoxFit.fill
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Stack(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            AssetPath.imagePost1,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            child: Image.asset(AssetPath.iconGallery),
                                          )
                                      ),
                                    ]
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Stack(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            AssetPath.iconAvatar,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            child: Image.asset(AssetPath.iconGallery),
                                          )
                                      ),
                                    ]
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.imagePost1,
                                    fit:BoxFit.fill
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.imagePost1,
                                    fit:BoxFit.fill
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.iconAvatar,
                                    fit:BoxFit.fill
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.imagePost1,
                                    fit:BoxFit.fill
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.666,
                                child: Stack(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            AssetPath.imagePost1,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            child: Image.asset(AssetPath.iconGallery),
                                          )
                                      ),
                                    ]
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          AssetPath.iconAvatar,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      child: Image.asset(
                                          AssetPath.iconAvatar,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.imagePost1,
                                    fit:BoxFit.fill
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.iconAvatar,
                                    fit:BoxFit.fill
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.imagePost1,
                                    fit:BoxFit.fill
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.imagePost1,
                                    fit:BoxFit.fill
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.iconAvatar,
                                    fit:BoxFit.fill
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.imagePost1,
                                    fit:BoxFit.fill
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Image.asset(
                                    AssetPath.imagePost1,
                                    fit:BoxFit.fill
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Stack(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            AssetPath.iconAvatar,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            child: Image.asset(AssetPath.iconGallery),
                                          )
                                      ),
                                    ]
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.333,
                                child: Stack(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            AssetPath.imagePost1,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            child: Image.asset(AssetPath.iconGallery),
                                          )
                                      ),
                                    ]
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
          BottomBar(),
        ],
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
