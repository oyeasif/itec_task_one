import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final buttonColor;
  final textColor;
  final bool? loading;
  final String image;

  ImageButtonWidget({
    Key? key,
    required this.title,
    required this.onPress,
    required this.buttonColor,
    required this.textColor,
    this.loading,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 1.0.h), // Adjust padding as needed
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor, // Use 'primary' for button's color
              shadowColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            onPressed: onPress,
            child: loading!
                ? const Center(
                    child: CircularProgressIndicator(
                    color: Colors.white,
                  )) // Loading indicator if needed
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(child: Image(image: NetworkImage(image),height: 23.h,)),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 0.12.h,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
