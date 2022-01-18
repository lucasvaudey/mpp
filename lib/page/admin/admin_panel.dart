import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/page/admin/add_arbre_const.dart';
import 'package:mpp/page/admin/add_aromat_const.dart';
import 'package:mpp/page/admin/add_legume_const.dart';
import 'package:mpp/provider/admin_provider.dart';
import 'package:provider/provider.dart';

class AdminPanel extends StatefulWidget {
  static const String route = '/adminpanel';
  const AdminPanel({Key? key}) : super(key: key);

  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AdminProvider(),
      child: Consumer<AdminProvider>(builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Admin panel"),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AddLegumeConst.route);
                      },
                      child: const Text("Ajouter un légume"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AddArbreConst.route);
                      },
                      child: const Text("Ajouter un arbre"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AddAromatConst.route);
                      },
                      child: const Text("Ajouter un aromat"),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: [
                      for (ConstElement value in provider.constants)
                        ConstPreview(element: value),
                      if (provider.loading) const CircularProgressIndicator(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class ConstPreview extends StatelessWidget {
  final ConstElement element;
  const ConstPreview({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Text("${element.image}"),
        ],
      ),
    );
  }
}
