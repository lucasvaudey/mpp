import 'package:flutter/widgets.dart';

class LoginProvider extends ChangeNotifier {
  late BuildContext context;
  LoginProvider(BuildContext _context) {
    context = _context;
  }
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController password = TextEditingController();
}
