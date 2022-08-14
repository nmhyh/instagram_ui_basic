import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/modules/common/bottom_bar.dart';
import 'package:instagram_ui/modules/home/components/app_bar_home.dart';
import 'package:instagram_ui/modules/home/components/post_card.dart';
import 'package:instagram_ui/modules/home/components/stories_list.dart';
import 'package:instagram_ui/themes/app_color.dart';
import 'package:instagram_ui/themes/text_style.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = '/ProfilePage';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 60,
                  color: Color(0xFFFAFAFA),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 12, top: 16),
                        child: Text(
                          'Cancel',
                          style: TxtStyle.headingCard,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Edit Profile',
                          style: TxtStyle.headingCardFontWeightBold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 12, top: 16),
                        child: Text(
                          'Done',
                          style: TxtStyle.headingCard.copyWith(
                              color: DarkTheme.blueMain
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 18.5),
                      width: 95,
                      height: 95,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(AssetPath.iconAvatar),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 13),
                      child: Text(
                        'Change Profile Photo',
                        style: TxtStyle.headingCardFontWeightBold.copyWith(
                          color: DarkTheme.blueMain
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
              ],
            )
          ),
        ]
      ),
    );
  }
}
