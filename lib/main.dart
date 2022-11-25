import 'package:flutter/material.dart';
import 'package:sfera_test_task/ui/main_button_view.dart';
import 'package:sfera_test_task/ui/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sfera Test Task',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign in to the system',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),

              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do not have an account?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    // --------------------------- Register text button
                    TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          );
                        },
                        child: const Text('Register now'))
                  ],
                ),
              ),

              // --------------------------------- Username textfield
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 400, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200]!,
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                    hintText: 'username',
                  ),
                ),
              ),

              // --------------------------------- Password textfield
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 400, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200]!,
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                    hintText: 'password',
                  ),
                ),
              ),

              MainButtonView(
                text: 'Sign in',
                function: _login,
              ),

              // --------------------------------- Google sign in button
            ],
          ),
        ),
      ),
    );
  }

  void _login() {
    // TODO: Implement API
  }
}
