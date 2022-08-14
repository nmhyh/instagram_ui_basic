import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/modules/home/home_page.dart';
import 'package:instagram_ui/modules/switch_account/switch_account.dart';
import 'package:instagram_ui/themes/app_color.dart';
import 'package:instagram_ui/themes/text_style.dart';
import 'package:instagram_ui/widgets/app_button.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/LoginPage';
  const LoginPage({Key? key}) : super(key: key);

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
                          fit: BoxFit.fill,
                        ),
                        margin: EdgeInsets.only(bottom: 39),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 34),
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                              labelText: 'User name',
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: DarkTheme.textDisable),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: DarkTheme.blueMain),
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 34, vertical: 12),
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                              labelText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: DarkTheme.textDisable),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: DarkTheme.blueMain),
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin:
                            const EdgeInsets.only(top: 7, bottom: 30, right: 34),
                        child: Text(
                          'Forgot password?',
                          style: TxtStyle.headingCardContent
                              .copyWith(color: DarkTheme.blueMain),
                        ),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  AssetPath.iconFacebook,
                                  width: 17,
                                  height: 17,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, SwitchAccountPage.routeName);
                                },
                                child: Text(
                                  'Switch accounts',
                                  style: TxtStyle.headingCardFontWeightBold
                                      .copyWith(color: DarkTheme.blueMain),
                                ),
                              )
                            ],
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 42, horizontal: 34),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                      BorderSide(color: DarkTheme.textDisable),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'OR',
                                  style: TxtStyle.headingCardContent
                                      .copyWith(color: DarkTheme.textDisable),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: DarkTheme.textDisable),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: 'Don’t have an account? ',
                              style: TxtStyle.headingCardContent
                                  .copyWith(color: DarkTheme.textDisable),
                              children: [
                                TextSpan(
                                  text: 'Sign up',
                                  style: TxtStyle.headingCardFontWeightBold
                                      .copyWith(color: DarkTheme.blueMain),
                                )
                              ]),
                        ),
                      ),
                    ]),
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
                          text: 'Instagram от Facebook',
                          style: TxtStyle.headingCardFontWeightBold
                              .copyWith(color: DarkTheme.textDisable),
                        )),
                      ),
                    ],
                  ) //last one
                  ),
            )
          ],
        )
      )
    );
  }
}
