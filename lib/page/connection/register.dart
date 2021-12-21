import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mpp/page/home_page.dart';
import 'package:mpp/page/splash_screen.dart';
import 'package:mpp/provider/app_provider.dart';
import 'package:mpp/provider/register_provider.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  static const String route = '/register';
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _pseudoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterProvider(context),
      child: Scaffold(
        body: Consumer<RegisterProvider>(builder: (context, provider, child) {
          return Form(
            key: provider.formKey,
            child: Column(
              children: [
                const Text('Register'),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(label: Text("email")),
                ),
                TextFormField(
                  controller: _pseudoController,
                  decoration: const InputDecoration(label: Text("pseudo")),
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(label: Text("MDP")),
                ),
                InkWell(
                  onTap: () async {
                    final success = await provider.register(
                        _emailController.text,
                        _pseudoController.text,
                        _passwordController.text);
                  },
                  child: Container(
                    child: Text("VALIDER"),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
