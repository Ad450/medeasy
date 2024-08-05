import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.asset.dart';

class ServicesTray extends StatelessWidget {
  const ServicesTray({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(right: 23.w, left: 13.w),
        child: Row(
          children: serviceImages
              .map(
                (e) => _ServiceContainer(
                  image: e["image"],
                  color: e["color"],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _ServiceContainer extends StatelessWidget {
  final String image;
  final Color color;

  const _ServiceContainer(
      {required this.image, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: Container(
        height: 87.h,
        width: 88.w,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
        child: Center(
          child: Image.asset(image),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> serviceImages = [
  {"image": AppAssets.consult, "color": const Color(0xffFF9E9E)},
  {"image": AppAssets.diagnosis, "color": const Color(0xffFFA3F6)},
  {"image": AppAssets.health, "color": const Color(0xffB9A0FF)},
  {"image": AppAssets.checkup, "color": const Color(0xffA0FFBB)},
];
