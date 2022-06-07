import 'package:flutter/material.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/page/admin/add_arbre_const.dart';
import 'package:mpp/page/admin/add_aromat_const.dart';
import 'package:mpp/page/admin/add_legume_const.dart';
import 'package:mpp/page/admin/const_preview.dart';
import 'package:mpp/provider/admin_provider.dart';
import 'package:provider/provider.dart';

class AdminPanel extends StatefulWidget {
  static const String route = '/adminpanel';
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
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
                        Navigator.pushNamed(context, AddLegumeConst.route,
                            arguments: provider);
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
