import 'package:flutter/material.dart';
import 'package:mpp/models/enums/hive_month.dart';
import 'package:mpp/provider/admin_provider.dart';
import 'package:provider/provider.dart';

class AddLegumeConst extends StatefulWidget {
  static const String route = '/adminpanel/addLegumeConst';
  const AddLegumeConst({Key? key}) : super(key: key);

  @override
  State<AddLegumeConst> createState() => _AddLegumeConstState();
}

class _AddLegumeConstState extends State<AddLegumeConst> {
  final TextEditingController _label = TextEditingController();
  final TextEditingController _defaultColor = TextEditingController();
  final TextEditingController _baseHeight = TextEditingController();
  final TextEditingController _baseWidth = TextEditingController();
  final TextEditingController _cultureDesc = TextEditingController();
  final TextEditingController _soilDesc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as AdminProvider;
    return ChangeNotifierProvider.value(
      value: args,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ajouter un legume"),
        ),
        body: Consumer<AdminProvider>(
          builder: (context, provider, _) {
            return SingleChildScrollView(
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _label,
                        decoration: const InputDecoration(
                          label: Text("label"),
                        ),
                      ),
                      TextFormField(
                        controller: _defaultColor,
                        decoration: const InputDecoration(
                          label: Text("defaultBgColor"),
                        ),
                      ),
                      TextFormField(
                        controller: _baseHeight,
                        decoration: const InputDecoration(
                          label: Text("baseHeight"),
                        ),
                      ),
                      TextFormField(
                        controller: _baseWidth,
                        decoration: const InputDecoration(
                          label: Text("baseWidth"),
                        ),
                      ),
                      TextFormField(
                        controller: _cultureDesc,
                        decoration: const InputDecoration(
                          label: Text("cultureDesc"),
                        ),
                      ),
                      //TODO array selector
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Advices"),
                        ),
                      ),
                      //TODO: Update a container with the specified month upside
                      DropdownButton<HiveMonth>(
                        items: const [DropdownMenuItem(child: Text("Janvier"))],
                        onChanged: (value) {},
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("recolteMonth"),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("semisMonth"),
                        ),
                      ),
                      TextFormField(
                        controller: _soilDesc,
                        decoration: const InputDecoration(
                          label: Text("SoilDesc"),
                        ),
                      ),
                      //TODO: Choose enum
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Exposition"),
                        ),
                      ),
                      TextButton(
                        onPressed: () => provider.pickImage(),
                        child: const Text(
                          "Selectionner une image",
                        ),
                      ),
                      TextButton(
                        onPressed: () => provider.addLegumeConst(),
                        child: const Text("Valider !"),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
