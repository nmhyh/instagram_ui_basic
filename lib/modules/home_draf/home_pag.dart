import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/modules/home_draf/components/app_bar_home.dart';
import 'package:instagram_ui/modules/home_draf/components/post_card.dart';
import 'package:instagram_ui/modules/home_draf/components/stories_list.dart';
import 'package:instagram_ui/themes/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DarkTheme.white,
        title: AppBarHome(),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                PostCard(),
                PostCard(),
                PostCard(),
                PostCard(),
              ],
            )
          ),
          BottomBar(),
        ]
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
