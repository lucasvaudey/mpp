import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mpp/const/color.dart';

///TextStyle:
TextStyle kConnectionButtonText =
    TextStyle(color: Colors.white, fontSize: 16.h);

///ButtonStyle
ButtonStyle kConnectionButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(kPrimary),
  foregroundColor: MaterialStateProperty.all(kRed),
  shadowColor: MaterialStateProperty.all(kRed),
  overlayColor: MaterialStateProperty.all(kRed),
  padding: MaterialStateProperty.all(
    EdgeInsets.symmetric(
      vertical: 16.h,
    ),
  ),
);
