import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/modules/home/home_pag.dart';
import 'package:instagram_ui/themes/app_color.dart';
import 'package:instagram_ui/themes/text_style.dart';
import 'package:instagram_ui/widgets/app_button.dart';

class SwitchAccountPage extends StatelessWidget {
  static const String routeName = '/SwitchAccountPage';
  const SwitchAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset(
                              AssetPath.iconInstagramLogo,
                              width: 182,
                              height: 49,
                              fit:BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 52, bottom: 13),
                            height: 85,
                            width: 85,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(AssetPath.iconAvatar),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(bottom: 12),
                              child: Text('jacob_w', style: TxtStyle.headingCardFontWeightBold.copyWith(color: DarkTheme.text),)
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: AppButton(
                              label: 'Log in',
                              onTap: () {
                                Navigator.pushNamed(context, HomePage.routeName);
                              },
                              color: DarkTheme.blueMain,
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: Text('Switch accounts', style: TxtStyle.headingCardFontWeightBold.copyWith(color: DarkTheme.blueMain),)
                          ),
                        ]
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: DarkTheme.textDisable),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 18, bottom: 18),
                          child: RichText(
                            text: TextSpan(
                              text: 'Don’t have an account?  ',
                              style: TxtStyle.headingCardFontWeightBold.copyWith(color: DarkTheme.textDisable),
                              children: [
                                TextSpan(
                                  text: 'Sign up',
                                  style: TxtStyle.headingCardFontWeightBold.copyWith(color: DarkTheme.text),
                                )
                              ]
                            )
                          ),
                        ),
                      ],
                    )//last one
                  ),
                ),
              ],
            )
        )
    );
  }
}
