import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final LoginController loginC = Get.put(LoginController());

  final _box = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (_box.read("dataRememberMe") != null) {
      loginC.rememberMe.value = true;
      loginC.emailC.text = _box.read("dataRememberMe")["email"];
      loginC.passC.text = _box.read("dataRememberMe")["password"];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => TextField(
              controller: loginC.passC,
              autocorrect: false,
              obscureText: loginC.isHidden.value,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Password",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () => loginC.isHidden.toggle(),
                  icon: Icon(
                    (loginC.isHidden.value)
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              value: loginC.rememberMe.value,
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("Remember Me"),
              onChanged: (value) {
                loginC.rememberMe.toggle();
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              loginC.login();
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: 14,
                ),
              ),
            ),
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}
