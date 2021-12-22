import 'package:flutter/material.dart';
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
        return Container();
      }),
    );
  }
}
