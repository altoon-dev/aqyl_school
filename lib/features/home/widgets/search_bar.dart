import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
        vertical: 1.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.w),
      ),
      child: Row(
        children: [
          Icon(
            CupertinoIcons.search,
            color: Colors.grey,
            size: 0.33.dp,
          ),
          SizedBox(width: 2.w),
          const Text('Поиск'),
        ],
      ),
    );
  }
}
