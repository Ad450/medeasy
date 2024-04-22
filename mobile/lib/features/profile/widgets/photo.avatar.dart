import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.asset.dart';

class PhotoAvatar extends StatelessWidget {
  final VoidCallback onTap;
  const PhotoAvatar({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 90.h,
            width: 90.w,
            decoration: const ShapeDecoration(
              shape: CircleBorder(),
              color: Colors.white,
            ),
            child: Center(
              child: Image.asset(AppAssets.camera),
            ),
          ),
          Text(
            'Add Profile Image',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
