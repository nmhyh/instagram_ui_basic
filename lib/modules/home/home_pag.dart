import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/modules/home/components/stories_list.dart';
import 'package:instagram_ui/themes/app_color.dart';
import 'package:instagram_ui/themes/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DarkTheme.white,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(
                  AssetPath.iconCamera,
                  width: 24,
                  height: 24,
                  fit:BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 42),
                child: Image.asset(
                  AssetPath.iconInstagramLogo,
                  width: 105,
                  height: 28,
                  fit:BoxFit.fill,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 18),
                      child: Image.asset(
                        AssetPath.iconIGTV,
                        width: 24,
                        height: 24,
                        fit:BoxFit.fill,
                      ),
                    ),
                    Image.asset(
                      AssetPath.iconMessenger,
                      width: 24,
                      height: 24,
                      fit:BoxFit.fill,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StoriesList(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: DarkTheme.textDisable),
                ),
              ),
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: 32,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(AssetPath.iconAvatar),
                                ),
                                margin: const EdgeInsets.only(right: 10),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(right: 4),
                                          child: Text(
                                            'joshua_l',
                                            style: TxtStyle.textTitleStory,
                                          ),
                                        ),
                                        Image.asset(AssetPath.iconOfficialIcon)
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Tokyo, Japan',
                                    style: TxtStyle.textPostLocation
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Image.asset(AssetPath.iconMoreIcon),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Image.asset(
                            AssetPath.imagePost1,
                            fit:BoxFit.fill
                          ),
                        ),
                        Positioned(
                          top: 14,
                          right: 14,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '1/3',
                                  style: TxtStyle.headingCardFontWeightBold.copyWith(color: DarkTheme.white),
                                )
                              ],
                            ),
                          )
                        ),
                      ]
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 17),
                                child: Image.asset(AssetPath.iconLike),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 17),
                                child: Image.asset(AssetPath.iconComment),
                              ),
                              Container(
                                child: Image.asset(AssetPath.iconMessenger),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 78),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: 6,
                                height: 6,
                                decoration: new BoxDecoration(
                                  color: DarkTheme.blueMain,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: 6,
                                height: 6,
                                decoration: new BoxDecoration(
                                  color: DarkTheme.textDisable,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                width: 6,
                                height: 6,
                                decoration: new BoxDecoration(
                                  color: DarkTheme.textDisable,
                                  shape: BoxShape.circle,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Image.asset(AssetPath.iconShape),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 14),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 7),
                          height: 17,
                          width: 17,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(AssetPath.iconAvatar),
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Like by ',
                            style: TxtStyle.headingCard,
                            children: [
                              TextSpan(
                                text: 'craig_love ',
                                style: TxtStyle.headingCardContent,
                              ),
                              TextSpan(
                                text: 'and ',
                              ),
                              TextSpan(
                                text: '44,686 others',
                                style: TxtStyle.headingCardContent,
                              ),
                            ]
                          )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 14, top: 5),
                    child: RichText(
                      text: const TextSpan(
                        text: 'joshua_l ',
                        style: TxtStyle.headingCard,
                        children: [
                          TextSpan(
                            text: 'The game in Japan was amazing and I want to share some photos',
                            style: TxtStyle.headingCardContent,
                          ),
                        ]
                      )
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
