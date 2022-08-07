import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';
import 'package:instagram_ui/models/user.dart';
import 'package:instagram_ui/themes/text_style.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 9, bottom: 9),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  print('See story');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      padding: EdgeInsets.all(3),
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
                          height: 84,
                          width: 84,
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
    );
  }
}
