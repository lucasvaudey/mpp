import 'package:flutter/material.dart';
import 'package:mpp/const/color.dart';
import 'package:mpp/utils/size_config.dart';

///TextStyle:
TextStyle kConnectionButtonText =
    TextStyle(color: Colors.white, fontSize: sizeConfig.sizeH(16));

///ButtonStyle
ButtonStyle kConnectionButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(kPrimary),
  foregroundColor: MaterialStateProperty.all(kRed),
  shadowColor: MaterialStateProperty.all(kRed),
  overlayColor: MaterialStateProperty.all(kRed),
  padding: MaterialStateProperty.all(
    EdgeInsets.symmetric(
      vertical: sizeConfig.safeH(16),
    ),
  ),
);
