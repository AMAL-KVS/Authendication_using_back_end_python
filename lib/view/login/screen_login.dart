import 'package:flutter/material.dart';
import 'package:mixer_sample/model/user_model.dart';

class ScreenLogin extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: 'Your Email',
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey,
                    focusColor: Colors.grey),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Your email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                    hintText: 'Your password',
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey,
                    focusColor: Colors.grey),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Your password';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false
                    // otherwise.
                    if (_formKey.currentState!.validate()) {
                      UserModel().submitForm(
                          emailController.text, passwordController.text);
                      // Scaffold.of(context).showBottomSheet(
                      //     (context) => const Text('Processing Data'));
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
