import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/modules/common/bottom_bar.dart';
import 'package:instagram_ui/themes/app_color.dart';
import 'package:instagram_ui/themes/text_style.dart';

class NotificationPage extends StatefulWidget {
  static const String routeName = '/NotificationPage';
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: size.height,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 24),
                      alignment: Alignment.center,
                      width: size.width,
                      child: TabBar(
                        labelColor: DarkTheme.text,
                        tabs: [
                          Tab(text: 'Following'),
                          Tab(text: 'You'),
                        ],
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: TxtStyle.heading3.copyWith(color: DarkTheme.text),
                        unselectedLabelStyle: TxtStyle.heading3,
                        indicatorColor: DarkTheme.text,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          FollowingTab(),
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: DarkTheme.textDisable),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                                  child: Text(
                                    'Follow Requests',
                                    style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                                  )
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: DarkTheme.textDisable),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                                  child: Text(
                                    'New',
                                    style: TxtStyle.headingCardFontWeightBold.copyWith(color: DarkTheme.text),
                                  )
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [

                                          Container(
                                            height: 44,
                                            width: 44,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(AssetPath.iconAvatar),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                        text: 'kiero_d, zackjohn',
                                                        style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                        children: [
                                                          TextSpan(
                                                            text: ' and ',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                          ),
                                                          TextSpan(
                                                            text: ' craig_love ',
                                                            style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                          ),
                                                        ]
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    child: RichText(
                                                        text: TextSpan(
                                                            text: 'like',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                            children: [
                                                              TextSpan(
                                                                text: ' joshua_l ',
                                                                style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                              ),
                                                              TextSpan(
                                                                text: 'photo. ',
                                                                style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                              ),
                                                              TextSpan(
                                                                text: '3h',
                                                                style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                                              ),
                                                            ]
                                                        )
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                                        width: 44,
                                        height: 44,
                                        child: Image.asset(
                                            AssetPath.imagePost1,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: DarkTheme.textDisable),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                                  child: Text(
                                    'Today',
                                    style: TxtStyle.headingCardFontWeightBold.copyWith(color: DarkTheme.text),
                                  )
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 44,
                                            width: 44,
                                            child: Stack(
                                                children: [
                                                  Container(
                                                    height: 32,
                                                    width: 32,
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage(AssetPath.iconAvatar),
                                                    ),
                                                  ),
                                                  Positioned(
                                                      bottom: 0,
                                                      right: 0,
                                                      child: Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              height: 32,
                                                              width: 32,
                                                              decoration: BoxDecoration(
                                                                gradient: LinearGradient(
                                                                  colors: [
                                                                    Color(0xFFFFFFFF),
                                                                    Color(0xFFFFFFFF),
                                                                  ],
                                                                ),
                                                                borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsets.all(0.8),
                                                                child: Container(
                                                                  height: 32,
                                                                  width: 32,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                                                    image: DecorationImage(
                                                                      image: AssetImage(AssetPath.iconAvatar),
                                                                      fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                  ),
                                                ]
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                        text: 'maxjacobson',
                                                        style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                        children: [
                                                          TextSpan(
                                                            text: ' and ',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                          ),
                                                          TextSpan(
                                                            text: ' zackjohn ',
                                                            style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                          ),
                                                        ]
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    child: RichText(
                                                        text: TextSpan(
                                                            text: 'like',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                            children: [
                                                              TextSpan(
                                                                text: ' mis_potter’s ',
                                                                style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                              ),
                                                              TextSpan(
                                                                text: 'post. ',
                                                                style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                              ),
                                                              TextSpan(
                                                                text: '3h',
                                                                style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                                              ),
                                                            ]
                                                        )
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                                        width: 44,
                                        height: 44,
                                        child: Image.asset(
                                            AssetPath.imagePost1,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: DarkTheme.textDisable),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                                  child: Text(
                                    'This Week',
                                    style: TxtStyle.headingCardFontWeightBold.copyWith(color: DarkTheme.text),
                                  )
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 44,
                                            width: 44,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(AssetPath.iconAvatar),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text: 'craig_love',
                                                      style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                      children: [
                                                        TextSpan(
                                                          text: ' mentioned you in a',
                                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                        ),
                                                      ]
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text: 'comment: ',
                                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                      children: [
                                                        TextSpan(
                                                          text: ' @jacob_w ',
                                                          style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                        ),
                                                        TextSpan(
                                                          text: 'exactly..',
                                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                        ),
                                                      ]
                                                    )
                                                  )
                                                ),
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text: '💫 2',
                                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                      children: [
                                                        TextSpan(
                                                          text: 'd',
                                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textDisable),
                                                        ),
                                                      ]
                                                    )
                                                  )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                                        width: 44,
                                        height: 44,
                                        child: Image.asset(
                                            AssetPath.imagePost1,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 72),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(right: 14, bottom: 4),
                                        width: 11,
                                        height: 11,
                                        child: Image.asset(
                                          AssetPath.iconLike,
                                          fit:BoxFit.fill
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Reply',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                        ),
                                        margin: const EdgeInsets.only(bottom: 4),
                                      ),
                                    ]
                                  )
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 44,
                                            width: 44,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(AssetPath.iconAvatar),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                        text: 'martini_rond',
                                                        style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                        children: [
                                                          TextSpan(
                                                            text: ' started',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                          ),
                                                        ]
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text: 'following you. ',
                                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                      children: [
                                                        TextSpan(
                                                          text: '3d',
                                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                                        ),
                                                      ]
                                                    )
                                                  )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                                        width: 90,
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Message',
                                          style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
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
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 44,
                                            width: 44,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(AssetPath.iconAvatar),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                        text: 'martini_rond',
                                                        style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                        children: [
                                                          TextSpan(
                                                            text: ' started',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                          ),
                                                        ]
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text: 'following you. ',
                                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                      children: [
                                                        TextSpan(
                                                          text: '3d',
                                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                                        ),
                                                      ]
                                                    )
                                                  )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                                        width: 90,
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Follow',
                                          style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.white),
                                        ),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: DarkTheme.textDisable,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(6)),
                                          color: DarkTheme.blueMain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 44,
                                            width: 44,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(AssetPath.iconAvatar),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                        text: 'martini_rond',
                                                        style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                        children: [
                                                          TextSpan(
                                                            text: ' started',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                          ),
                                                        ]
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    child: RichText(
                                                        text: TextSpan(
                                                            text: 'following you. ',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                            children: [
                                                              TextSpan(
                                                                text: '3d',
                                                                style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                                              ),
                                                            ]
                                                        )
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                                        width: 90,
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Message',
                                          style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
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
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 44,
                                            width: 44,
                                            child: Container(
                                              height: 44,
                                              width: 44,
                                              padding: EdgeInsets.all(1),
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFFFBAA47),
                                                    Color(0xFFD91A46),
                                                    Color(0xFFA60F93),
                                                  ],
                                                ),
                                                borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(1),
                                                child: Container(
                                                  height: 43,
                                                  width: 43,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                                    image: DecorationImage(
                                                      image: AssetImage(AssetPath.iconAvatar),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                        text: 'karennne',
                                                        style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                        children: [
                                                          TextSpan(
                                                            text: ' like ',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                          ),
                                                          TextSpan(
                                                            text: ' martini_rond’s ',
                                                            style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                          ),
                                                        ]
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    child: RichText(
                                                        text: TextSpan(
                                                            text: 'comment: ',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                            children: [
                                                              TextSpan(
                                                                text: ' @martini_rond ',
                                                                style: TxtStyle.textTitleStory.copyWith(color: Color(0xFF05386B)),
                                                              ),
                                                              TextSpan(
                                                                text: 'Nice! ',
                                                                style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                              ),
                                                              TextSpan(
                                                                text: '3h',
                                                                style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                                              ),
                                                            ]
                                                        )
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                                        width: 44,
                                        height: 44,
                                        child: Image.asset(
                                            AssetPath.imagePost1,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 44,
                                            width: 44,
                                            child: Stack(
                                                children: [
                                                  Container(
                                                    height: 32,
                                                    width: 32,
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage(AssetPath.iconAvatar),
                                                    ),
                                                  ),
                                                  Positioned(
                                                      bottom: 0,
                                                      right: 0,
                                                      child: Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              height: 32,
                                                              width: 32,
                                                              decoration: BoxDecoration(
                                                                gradient: LinearGradient(
                                                                  colors: [
                                                                    Color(0xFFFFFFFF),
                                                                    Color(0xFFFFFFFF),
                                                                  ],
                                                                ),
                                                                borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsets.all(0.8),
                                                                child: Container(
                                                                  height: 32,
                                                                  width: 32,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                                                    image: DecorationImage(
                                                                      image: AssetImage(AssetPath.iconAvatar),
                                                                      fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                  ),
                                                ]
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: RichText(
                                                    text: TextSpan(
                                                        text: 'kiero_d, zackjohn',
                                                        style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                        children: [
                                                          TextSpan(
                                                            text: ' and ',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                          ),
                                                          TextSpan(
                                                            text: ' craig_love ',
                                                            style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                          ),
                                                        ]
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    child: RichText(
                                                        text: TextSpan(
                                                            text: 'like',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                            children: [
                                                              TextSpan(
                                                                text: ' joshua_l ',
                                                                style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                              ),
                                                              TextSpan(
                                                                text: 'photo. ',
                                                                style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                              ),
                                                              TextSpan(
                                                                text: '3h',
                                                                style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                                              ),
                                                            ]
                                                        )
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                                        width: 44,
                                        height: 44,
                                        child: Image.asset(
                                            AssetPath.imagePost1,
                                            fit:BoxFit.fill
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 44,
                                        width: 44,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(AssetPath.iconAvatar),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 12),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: RichText(
                                                text: TextSpan(
                                                    text: 'kiero_d',
                                                    style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                    children: [
                                                      TextSpan(
                                                        text: ' started following',
                                                        style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ),
                                            Container(
                                                child: RichText(
                                                    text: TextSpan(
                                                        text: ' craig_love',
                                                        style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                                        children: [
                                                          TextSpan(
                                                            text: '. ',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                                          ),
                                                          TextSpan(
                                                            text: '3h',
                                                            style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                                          )
                                                        ]
                                                    )
                                                )
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 50),
                                ),
                              ]
                            )
                          ),
                        ],
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
          BottomBar(),
        ],
      )
    );
  }
}

class FollowingTab extends StatelessWidget {
  const FollowingTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: DarkTheme.textDisable),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AssetPath.iconAvatar),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 12),
                        child: RichText(
                          text: TextSpan(
                              text: 'karennne',
                              style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                              children: [
                                TextSpan(
                                  text: ' liked 3 posts. ',
                                  style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                ),
                                TextSpan(
                                  text: '3h',
                                  style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                )
                              ]
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child : Wrap(
                                  alignment: WrapAlignment.start,
                                  direction: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      child: Stack(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(AssetPath.iconAvatar),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFFFFFFF),
                                              Color(0xFFFFFFFF),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.8),
                                          child: Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                              image: DecorationImage(
                                                image: AssetImage(AssetPath.iconAvatar),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: RichText(
                              text: TextSpan(
                                  text: 'kiero_d, zackjohn',
                                  style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                  children: [
                                    TextSpan(
                                      text: ' and ',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                    ),
                                    TextSpan(
                                      text: ' craig_love ',
                                      style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          Container(
                              child: RichText(
                                  text: TextSpan(
                                      text: 'like',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                      children: [
                                        TextSpan(
                                          text: ' joshua_l ',
                                          style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                        ),
                                        TextSpan(
                                          text: 'photo. ',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                        ),
                                        TextSpan(
                                          text: '3h',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                        ),
                                      ]
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 4, bottom: 4),
                  width: 44,
                  height: 44,
                  child: Image.asset(
                      AssetPath.imagePost1,
                      fit:BoxFit.fill
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AssetPath.iconAvatar),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: 'kiero_d',
                              style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                              children: [
                                TextSpan(
                                  text: ' started following',
                                  style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                ),
                              ]
                          ),
                        ),
                      ),
                      Container(
                          child: RichText(
                              text: TextSpan(
                                  text: ' craig_love',
                                  style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                  children: [
                                    TextSpan(
                                      text: '. ',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                    ),
                                    TextSpan(
                                      text: '3h',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                    )
                                  ]
                              )
                          )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AssetPath.iconAvatar),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 12),
                        child: RichText(
                          text: TextSpan(
                              text: 'craig_love',
                              style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                              children: [
                                TextSpan(
                                  text: ' liked 8 posts. ',
                                  style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                ),
                                TextSpan(
                                  text: '3h',
                                  style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                )
                              ]
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child : Wrap(
                                  alignment: WrapAlignment.start,
                                  direction: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      child: Stack(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(AssetPath.iconAvatar),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFFFFFFF),
                                            Color(0xFFFFFFFF),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.8),
                                        child: Container(
                                          height: 32,
                                          width: 32,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                            image: DecorationImage(
                                              image: AssetImage(AssetPath.iconAvatar),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                        ]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: RichText(
                              text: TextSpan(
                                  text: 'maxjacobson',
                                  style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                  children: [
                                    TextSpan(
                                      text: ' and ',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                    ),
                                    TextSpan(
                                      text: ' zackjohn ',
                                      style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          Container(
                              child: RichText(
                                  text: TextSpan(
                                      text: 'like',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                      children: [
                                        TextSpan(
                                          text: ' mis_potter’s ',
                                          style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                        ),
                                        TextSpan(
                                          text: 'post. ',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                        ),
                                        TextSpan(
                                          text: '3h',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                        ),
                                      ]
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 4, bottom: 4),
                  width: 44,
                  height: 44,
                  child: Image.asset(
                      AssetPath.imagePost1,
                      fit:BoxFit.fill
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      child: Stack(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(AssetPath.iconAvatar),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFFFFFFF),
                                              Color(0xFFFFFFFF),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.8),
                                          child: Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                              image: DecorationImage(
                                                image: AssetImage(AssetPath.iconAvatar),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: RichText(
                              text: TextSpan(
                                  text: 'kiero_d, zackjohn',
                                  style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                  children: [
                                    TextSpan(
                                      text: ' and ',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                    ),
                                    TextSpan(
                                      text: ' craig_love ',
                                      style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          Container(
                              child: RichText(
                                  text: TextSpan(
                                      text: 'like',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                      children: [
                                        TextSpan(
                                          text: ' joshua_l ',
                                          style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                        ),
                                        TextSpan(
                                          text: 'photo. ',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                        ),
                                        TextSpan(
                                          text: '3h',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                        ),
                                      ]
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 4, bottom: 4),
                  width: 44,
                  height: 44,
                  child: Image.asset(
                      AssetPath.imagePost1,
                      fit:BoxFit.fill
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      child: Container(
                        height: 44,
                        width: 44,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFBAA47),
                              Color(0xFFD91A46),
                              Color(0xFFA60F93),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(42.5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Container(
                            height: 43,
                            width: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(42.5)),
                              image: DecorationImage(
                                image: AssetImage(AssetPath.iconAvatar),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: RichText(
                              text: TextSpan(
                                  text: 'karennne',
                                  style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                  children: [
                                    TextSpan(
                                      text: ' like ',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                    ),
                                    TextSpan(
                                      text: ' martini_rond’s ',
                                      style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          Container(
                              child: RichText(
                                  text: TextSpan(
                                      text: 'comment: ',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                      children: [
                                        TextSpan(
                                          text: ' @martini_rond ',
                                          style: TxtStyle.textTitleStory.copyWith(color: Color(0xFF05386B)),
                                        ),
                                        TextSpan(
                                          text: 'Nice! ',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                        ),
                                        TextSpan(
                                          text: '3h',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                        ),
                                      ]
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 4, bottom: 4),
                  width: 44,
                  height: 44,
                  child: Image.asset(
                      AssetPath.imagePost1,
                      fit:BoxFit.fill
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  child: Container(
                    height: 44,
                    width: 44,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFBAA47),
                          Color(0xFFD91A46),
                          Color(0xFFA60F93),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(42.5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(42.5)),
                          image: DecorationImage(
                            image: AssetImage(AssetPath.iconAvatar),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 12),
                        child: RichText(
                          text: TextSpan(
                              text: 'karennne',
                              style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                              children: [
                                TextSpan(
                                  text: ' liked 3 posts. ',
                                  style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                ),
                                TextSpan(
                                  text: '3h',
                                  style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                )
                              ]
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child : Wrap(
                                  alignment: WrapAlignment.start,
                                  direction: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4, bottom: 4),
                                      width: 44,
                                      height: 44,
                                      child: Image.asset(
                                          AssetPath.imagePost1,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      child: Stack(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(AssetPath.iconAvatar),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFFFFFFF),
                                              Color(0xFFFFFFFF),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.8),
                                          child: Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(42.5)),
                                              image: DecorationImage(
                                                image: AssetImage(AssetPath.iconAvatar),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: RichText(
                              text: TextSpan(
                                  text: 'kiero_d, zackjohn',
                                  style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                  children: [
                                    TextSpan(
                                      text: ' and ',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                    ),
                                    TextSpan(
                                      text: ' craig_love ',
                                      style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          Container(
                              child: RichText(
                                  text: TextSpan(
                                      text: 'like',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                      children: [
                                        TextSpan(
                                          text: ' joshua_l ',
                                          style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                        ),
                                        TextSpan(
                                          text: 'photo. ',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                        ),
                                        TextSpan(
                                          text: '3h',
                                          style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                        ),
                                      ]
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 4, bottom: 4),
                  width: 44,
                  height: 44,
                  child: Image.asset(
                      AssetPath.imagePost1,
                      fit:BoxFit.fill
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AssetPath.iconAvatar),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: 'kiero_d',
                              style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                              children: [
                                TextSpan(
                                  text: ' started following',
                                  style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                ),
                              ]
                          ),
                        ),
                      ),
                      Container(
                          child: RichText(
                              text: TextSpan(
                                  text: ' craig_love',
                                  style: TxtStyle.headingCardContentFontWeightBold.copyWith(color: DarkTheme.text),
                                  children: [
                                    TextSpan(
                                      text: '. ',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.text),
                                    ),
                                    TextSpan(
                                      text: '3h',
                                      style: TxtStyle.textTitleStory.copyWith(color: DarkTheme.textHour),
                                    )
                                  ]
                              )
                          )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50),
          ),
        ]
      )
    );
  }
}
