import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginView extends ConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        const FlutterLogo(size: 96),
        const Gap(20),
        TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'Enter email'),
        ),
        const Gap(20),
        TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'Enter password'),
          obscureText: true,
        ),
        const Gap(20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.amberAccent,
              minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 60)),
          child: const Text("Login"),
        ),
        const Gap(20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
          Divider(color: Colors.grey),
          Text("Or Login with"),
          Divider(color: Colors.grey)
        ]),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SocialLoginButton(
              buttonType: SocialLoginButtonType.google,
              onPressed: () {},
              mode: SocialLoginButtonMode.single,
            ),
            SocialLoginButton(
              buttonType: SocialLoginButtonType.twitter,
              onPressed: () {},
              mode: SocialLoginButtonMode.single,
            ),
            SocialLoginButton(
              buttonType: SocialLoginButtonType.apple,
              onPressed: () {},
              mode: SocialLoginButtonMode.single,
            ),
          ],
        ),
        const Gap(20),
        const Divider(color: Colors.grey),
        const Gap(20),
        RichText(
            text: TextSpan(
                text:
                    'Dont have an account yet? Create an account, create one ',
                children: [
              TextSpan(
                  text: 'here',
                  style: const TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      debugPrint('here button pressed');
                    })
            ]))
      ]),
    ));
  }
}
