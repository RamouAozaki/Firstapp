import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page d\'accueil')),
      body: const Center(child: Text('Bienvenue sur la page d\'accueil!')),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visibilite = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Image.asset("assets/login.jpeg")),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Login",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: const Icon(Icons.person),
                  ),
                ),
                TextFormField(
                  obscureText: visibilite,
                  controller: password,
                  decoration: InputDecoration(
                      hintText: "Mot de passe",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            visibilite = !visibilite;
                          });
                        },
                        child: visibilite
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      )),
                ),
               
              ],
            ),
          ),
        ),
      );
    
  }
}
