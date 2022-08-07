import 'package:flutter/material.dart';
import 'package:instagram_ui/modules/common/bottom_bar.dart';
import 'package:instagram_ui/modules/home/components/app_bar_home.dart';
import 'package:instagram_ui/modules/home/components/post_card.dart';
import 'package:instagram_ui/modules/home/components/stories_list.dart';
import 'package:instagram_ui/themes/app_color.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DarkTheme.white,
        title: AppBarHome(),
        automaticallyImplyLeading: false,
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
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                )
              ],
            )
          ),
          BottomBar(),
        ]
      ),
    );
  }
}
