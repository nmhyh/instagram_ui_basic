import 'package:flutter/material.dart';
import 'package:instagram_ui/themes/app_color.dart';
import 'package:instagram_ui/themes/text_style.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;
  const AppButton({Key? key,required this.label, required this.color, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 34),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(3, 6),
              blurRadius: 6,
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: Text(
            label,
            style: TxtStyle.headingCardFontWeightBold.copyWith(color: DarkTheme.white),
          ),
        ),
      ),
    );
  }
}
