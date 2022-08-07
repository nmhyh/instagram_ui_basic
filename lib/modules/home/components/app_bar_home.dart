import 'package:flutter/material.dart';
import 'package:instagram_ui/config/constants/assets_path.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(
              AssetPath.iconCamera,
              width: 24,
              height: 24,
              fit:BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 42),
            child: Image.asset(
              AssetPath.iconInstagramLogo,
              width: 105,
              height: 28,
              fit:BoxFit.fill,
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 18),
                  child: Image.asset(
                    AssetPath.iconIGTV,
                    width: 24,
                    height: 24,
                    fit:BoxFit.fill,
                  ),
                ),
                Image.asset(
                  AssetPath.iconMessenger,
                  width: 24,
                  height: 24,
                  fit:BoxFit.fill,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
