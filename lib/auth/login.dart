import 'package:chatty/pages/form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObs = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Icon(
                Icons.person,
                size: 200,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'Masukkan Username',
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: isObs,
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObs = !isObs;
                      });
                    },
                    icon: Icon(
                      isObs ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  hintText: 'Masukkan Password',
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  if (usernameController.text == 'rizki' &&
                      passwordController.text == 'password') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FormPendaftaran();
                        },
                      ),
                    );
                  } else if (usernameController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Silhakan isi username',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        backgroundColor: Colors.yellow,
                        duration: Duration(
                          seconds: 5,
                        ),
                      ),
                    );
                  } else if (passwordController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Silhakan isi password',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        backgroundColor: Colors.yellow,
                        duration: Duration(
                          seconds: 5,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('User tidak ditemukan'),
                        backgroundColor: Colors.red,
                        duration: Duration(
                          seconds: 5,
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
