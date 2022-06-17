import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'package:provider/provider.dart';

import 'login_view.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginChoiceState>(
        create: (context) => LoginChoiceState(), child: const LoginView());
  }
}
