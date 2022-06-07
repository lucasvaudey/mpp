import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mpp/models/const/const_element.dart';

class ConstPreview extends StatelessWidget {
  final ConstElement element;
  const ConstPreview({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(element.image);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.h),
      ),
      child: Column(
        children: [
          Text(element.label),
          Text("${element.baseHeight} hauteur en cm"),
          Text("${element.baseWidth} largeur en cm"),
          if (element.advices != null) Text("Conseils :"),
          for (String advice in element.advices ?? []) Text(advice),
          Text("${element.description} "),
          Image.network(element.image),
        ],
      ),
    );
  }
}
