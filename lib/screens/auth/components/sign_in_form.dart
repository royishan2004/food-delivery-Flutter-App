import 'package:flutter/material.dart';

import '../../../components/buttons/primary_button.dart';
import '../../../constants.dart';
import '../forgot_password_screen.dart';
import 'package:foodly_ui/entry_point.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final supabase = Supabase.instance.client;
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: email,
          decoration: InputDecoration(
            hintText: "Email Address",
          ),
        ),
        TextField(
          controller: password,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            hintText: "Password",
          ),
        ),

        const SizedBox(height: defaultPadding),

        // Forget Password
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ForgotPasswordScreen(),
            ),
          ),
          child: Text(
            "Forget Password?",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: defaultPadding),

        // Sign In Button
        ElevatedButton(
          onPressed: () async {
            await supabase.from('login').insert({
              "username": email.text.split('@')[0],
              "password": password.text
            });
            // just for demo
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const EntryPoint(),
              ),
                  (_) => true,
            );
          },
          child: Text("Sign in"),
        ),
      ],
    );
  }
}
