import 'package:flutter/material.dart';
import 'package:mpp/graphql/generated/graphql_api.graphql.dart';
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
  final TextEditingController _recolteDesc = TextEditingController();
  final TextEditingController _desc = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as AdminProvider;
    return ChangeNotifierProvider.value(
      value: args,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ajouter un legume"),
        ),
        body: WillPopScope(
          onWillPop: () async {
            if (isLoading) {
              return false;
            }
            return true;
          },
          child: Consumer<AdminProvider>(
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
                          items: const [
                            DropdownMenuItem(child: Text("Janvier")),
                          ],
                          onChanged: (value) {},
                        ),
                        TextFormField(
                          controller: _desc,
                          decoration: const InputDecoration(
                            label: Text("Description"),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text("recolteMonth"),
                          ),
                        ),
                        TextFormField(
                          controller: _recolteDesc,
                          decoration: const InputDecoration(
                            label: Text("Recolte desc"),
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
                          onPressed: () async {
                            if (isLoading) {
                              return;
                            }
                            setState(() {
                              isLoading = true;
                            });
                            ConstInput arg = ConstInput(
                              legume: LegumeConstInput(
                                advices: ["Bien !"],
                                baseHeight: double.parse(_baseHeight.text),
                                baseWidth: double.parse(_baseWidth.text),
                                cultureDesc: _cultureDesc.text,
                                defaultBgColor: _defaultColor.text,
                                description: _desc.text,
                                exposition: Exposition.soleil,
                                label: _label.text,
                                plantMonth: [
                                  Month.aout,
                                  Month.juin,
                                ],
                                recolteDesc: _recolteDesc.text,
                                recolteMonth: [
                                  Month.aout,
                                  Month.juin,
                                ],
                                semisMonth: [
                                  Month.aout,
                                  Month.juin,
                                ],
                                soilDesc: _soilDesc.text,
                              ),
                            );
                            await provider.addConst(arg);
                            setState(() {
                              isLoading = false;
                            });
                          },
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
      ),
    );
  }
}
