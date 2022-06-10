import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/provider/admin_provider.dart';
import 'package:provider/provider.dart';

class ConstPreview extends StatefulWidget {
  final ConstElement element;
  const ConstPreview({Key? key, required this.element}) : super(key: key);

  @override
  State<ConstPreview> createState() => _ConstPreviewState();
}

class _ConstPreviewState extends State<ConstPreview> {
  bool isDeleting = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<AdminProvider>(builder: (context, provider, _) {
      if (isDeleting) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.h),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(widget.element.id.toString()),
                Text(widget.element.label),
                Text("${widget.element.baseHeight} hauteur en cm"),
                Text("${widget.element.baseWidth} largeur en cm"),
                if (widget.element.advices != null) const Text("Conseils :"),
                for (String advice in widget.element.advices ?? [])
                  Text(advice),
                Text("${widget.element.description} "),
                Image.network(widget.element.image, width: 300.w),
              ],
            ),
            IconButton(
              onPressed: () async {
                setState(() {
                  isDeleting = true;
                });
                if (await provider.removeConst(widget.element.id)) {
                  setState(() {
                    isDeleting = false;
                  });
                }
              },
              icon: const Icon(Icons.remove_circle_outline),
              color: Colors.red,
            ),
          ],
        ),
      );
    });
  }
}
