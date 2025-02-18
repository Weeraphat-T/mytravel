import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytravel/constants/colors.dart';

class MyButton extends StatelessWidget {
  MyButton({
    super.key,
    required this.labelText,
    this.onTap,
  });

  final Function()? onTap;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            color: primaryColors, borderRadius: BorderRadius.circular(30.0)),
        child: Text(
          labelText,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.titleLarge,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            color: secondaryColors,
          ),
        ),
      ),
    );
  }
}
