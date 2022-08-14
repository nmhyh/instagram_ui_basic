import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/models/user.dart';
import 'package:instagram_ui/modules/common/bottom_bar.dart';
import 'package:instagram_ui/modules/profile_page/profile_page.dart';
import 'package:instagram_ui/themes/app_color.dart';
import 'package:instagram_ui/themes/text_style.dart';

class PersonalPage extends StatefulWidget {
  static const String routeName = '/PersonalPage';
  const PersonalPage({Key? key}) : super(key: key);

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> with SingleTickerProviderStateMixin {
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
      appBar: AppBar(
        backgroundColor: DarkTheme.backgroundPersonalPage,
        title: AppBarPersonalPage(),
        automaticallyImplyLeading: false,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Image.asset(AssetPath.iconMenu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child:  Container(
          margin: EdgeInsets.only(top: 25, left: 16),
          child: Stack(
            children: [
              Container(
                child: ListView(
                  padding:  EdgeInsets.all(0.0),
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              's.khasanov_',
                              style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 13),
                            child: Image.asset(
                              AssetPath.iconArchive,
                              width: 24,
                              height: 24,
                              fit:BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Archive',
                              style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 13),
                            child: Image.asset(
                              AssetPath.iconYourActivity,
                              width: 24,
                              height: 24,
                              fit:BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Your Activity',
                              style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 13),
                            child: Image.asset(
                              AssetPath.iconNameTags,
                              width: 24,
                              height: 24,
                              fit:BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Nametag',
                              style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 13),
                            child: Image.asset(
                              AssetPath.iconShape,
                              width: 24,
                              height: 24,
                              fit:BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Saved',
                              style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 13),
                            child: Image.asset(
                              AssetPath.iconCloseFriends,
                              width: 24,
                              height: 24,
                              fit:BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Close Friends',
                              style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 13),
                            child: Image.asset(
                              AssetPath.iconDiscoverPeople,
                              width: 24,
                              height: 18,
                              fit:BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Discover People',
                              style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 13),
                            child: Image.asset(
                              AssetPath.iconOpenFacebook,
                              width: 24,
                              height: 24,
                              fit:BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Open Facebook',
                              style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Container(
                    color: DarkTheme.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 13),
                                child: Image.asset(
                                  AssetPath.iconSetting,
                                  width: 24,
                                  height: 24,
                                  fit:BoxFit.fill,
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Settings',
                                  style: TxtStyle.heading3Medium.copyWith(color: DarkTheme.text),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 11, right: 28, top: 10, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 96,
                        width: 96,
                        padding: EdgeInsets.all(0.5),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF333333),
                              Color(0xFF333333),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(48)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(0.5),
                          child: Container(
                            height: 96,
                            width: 96,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(48)),
                              image: DecorationImage(
                                image: AssetImage(AssetPath.iconAvatar),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '54',
                                    style: TxtStyle.headingCardFontWeightBold.copyWith(
                                      color: DarkTheme.text,
                                      fontSize: 21,
                                    ),
                                  ),
                                  Text(
                                    'Posts',
                                    style: TxtStyle.headingCard.copyWith(
                                      color: DarkTheme.text,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '834',
                                    style: TxtStyle.headingCardFontWeightBold.copyWith(
                                      color: DarkTheme.text,
                                      fontSize: 21,
                                    ),
                                  ),
                                  Text(
                                    'Followers',
                                    style: TxtStyle.headingCard.copyWith(
                                      color: DarkTheme.text,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '162',
                                    style: TxtStyle.headingCardFontWeightBold.copyWith(
                                      color: DarkTheme.text,
                                      fontSize: 21,
                                    ),
                                  ),
                                  Text(
                                    'Following',
                                    style: TxtStyle.headingCard.copyWith(
                                      color: DarkTheme.text,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 11, bottom: 15, right: 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Jacob West',
                          style: TxtStyle.headingCardFontWeightBold.copyWith(
                            color: DarkTheme.text
                          ),
                        ),
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Digital goodies designer ',
                                style: TxtStyle.headingCard.copyWith(
                                  color: DarkTheme.text
                                ),
                              ),
                              TextSpan(
                                text: '@pixsellz',
                                style: TxtStyle.headingCard.copyWith(
                                  color: Color(0xFF05386B),
                                ),
                              ),
                            ]
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Everything is designed.',
                          style: TxtStyle.headingCard.copyWith(
                            color: DarkTheme.text
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 14, right: 14, bottom: 15),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, ProfilePage.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Text(
                        'Edit Profile',
                        style: TxtStyle.headingCardFontWeightBold,
                      )
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: DarkTheme.textDisable,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 14),
                  child: SizedBox(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return index == 0
                          ? Container(
                              margin: EdgeInsets.only(right: 22),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 64,
                                          height: 64,
                                          decoration: new BoxDecoration(
                                            border: Border.all(width: 1, color: Color(0xFFC7C7CC)),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Image.asset(AssetPath.iconAddStory)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      'New',
                                      style: TxtStyle.textTitleStory,
                                    ),
                                  )
                                ],
                              ),
                          )
                          : Container(
                          margin: EdgeInsets.only(right: 22),
                          child: GestureDetector(
                            onTap: () {
                              print('See story');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Container(
                                //   height: 64,
                                //   width: 64,
                                //   padding: EdgeInsets.all(3),
                                //   decoration: BoxDecoration(
                                //     gradient: LinearGradient(
                                //       colors: [
                                //         Color(0xFFFBAA47),
                                //         Color(0xFFD91A46),
                                //         Color(0xFFA60F93),
                                //       ],
                                //     ),
                                //     borderRadius: BorderRadius.all(Radius.circular(32)),
                                //   ),
                                //   child: Padding(
                                //     padding: const EdgeInsets.all(1),
                                //     child: Container(
                                //       height: 64,
                                //       width: 64,
                                //       decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.all(Radius.circular(32)),
                                //         image: DecorationImage(
                                //           image: AssetImage(AssetPath.iconAvatar),
                                //           fit: BoxFit.cover,
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                Container(
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 64,
                                        height: 64,
                                        decoration: new BoxDecoration(
                                          border: Border.all(width: 1, color: Color(0xFFC7C7CC)),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            width: 56,
                                            height: 56,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(AssetPath.iconAvatar),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          )
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    users[index].username,
                                    style: TxtStyle.textTitleStory,
                                  ),
                                )
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
                Column(
                  children: [
                    SizedBox(
                      height: size.height - 120,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 24),
                            alignment: Alignment.center,
                            width: size.width,
                            child: TabBar(
                              labelColor: DarkTheme.text,
                              tabs: [
                                Tab(icon: Image.asset(AssetPath.iconGridView),),
                                Tab(icon: Image.asset(AssetPath.iconTags)),
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
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
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
                                                            child: Image.asset(AssetPath.iconVideo),
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
                                                            child: Image.asset(AssetPath.iconVideo),
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
                                                            child: Image.asset(AssetPath.iconVideo),
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
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text('Hello 2'),
                                  ),
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
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

class AppBarPersonalPage extends StatelessWidget {
  const AppBarPersonalPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                AssetPath.iconPrivate,
                width: 9,
                height: 12,
                fit:BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                'jacob_w',
                style: TxtStyle.headingCardFontWeightBold,
              )
            ),
            Container(
              child: Image.asset(
                AssetPath.iconArrowDown,
                width: 11,
                height: 6.5,
                fit:BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
