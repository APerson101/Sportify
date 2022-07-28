import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ListTile(
      title: Text("Coming up"),
      subtitle: ListTile(
        leading: FlutterLogo(),
        title: Text('Women Tennis Tournament'),
        subtitle: Text('live match'),
        trailing: Icon(Icons.arrow_back),
      ),
    ));
  }
}

/**
 * Column(
      children: [
        const Text("coming up...."),
        Row(
          children: [
            const FlutterLogo(),
            Column(
              children: const [
                Text('Women Tennis Tournament'),
                Text("Live Match")
              ],
            ),
            const Icon(Icons.arrow_back)
          ],
        )
      ],
    )
 */
class Testing extends StatelessWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: getChildren());
  }

  List<Widget> getChildren() {
    List<Widget> children = [];
    children.add(const Text("hello"));
    return children;
  }
}
