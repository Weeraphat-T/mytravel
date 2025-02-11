import 'package:flutter/material.dart';
import 'package:mytravel/constants/colors.dart';
import 'package:mytravel/widgets/icon_widget.dart';

class IconTab extends StatelessWidget {
  const IconTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconWidget(title: "MT", color: greenbaseColors, icon: Icons.map,),
        IconWidget(title: "River", color: bluebaseColors, icon: Icons.water,),
        IconWidget(title: "Lava", color: redbaseColors, icon: Icons.volcano,),
        IconWidget(title: "Beach", color: yellowbaseColors, icon: Icons.beach_access_rounded,),
        IconWidget(title: "Sunset", color: orangebaseColors, icon: Icons.sunny,),
      ],
    );
  }
}