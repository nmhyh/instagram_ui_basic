import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/modules/home/home_pag.dart';
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
