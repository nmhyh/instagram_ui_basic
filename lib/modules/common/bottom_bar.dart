import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/modules/home/home_pag.dart';
import 'package:instagram_ui/modules/notification_page/notification_page.dart';
import 'package:instagram_ui/modules/personal_page/personal_page.dart';
import 'package:instagram_ui/modules/search/search_page.dart';
import 'package:instagram_ui/themes/app_color.dart';

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
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.routeName);
                    },
                    child: Container(
                      child: Image.asset(ModalRoute.of(context)?.settings?.name == HomePage.routeName ? AssetPath.iconHomeBlack : AssetPath.iconHomePage),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SearchPage.routeName);
                    },
                    child: Container(
                      child: Image.asset(ModalRoute.of(context)?.settings?.name == SearchPage.routeName ? AssetPath.iconSearchActivePage : AssetPath.iconSearchGrey),
                    ),
                  ),
                  Container(
                    child: Image.asset(AssetPath.iconAddHome),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, NotificationPage.routeName);
                    },
                    child: Container(
                      child: Image.asset(ModalRoute.of(context)?.settings?.name == NotificationPage.routeName ? AssetPath.iconLikeActive : AssetPath.iconLike),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PersonalPage.routeName);
                    },
                    child: Container(
                      height: 26,
                      width: 26,
                      child: ModalRoute.of(context)?.settings?.name == PersonalPage.routeName
                        ? Container(
                          height: 26,
                          width: 26,
                          padding: EdgeInsets.all(0.5),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF333333),
                                Color(0xFF333333),
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.5),
                            child: Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(13)),
                                image: DecorationImage(
                                  image: AssetImage(AssetPath.iconAvatar),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                        : CircleAvatar(
                          backgroundImage: AssetImage(AssetPath.iconAvatar),
                        )
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
