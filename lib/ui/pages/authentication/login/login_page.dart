import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/instagram_logo.png',
                width: Get.width / 2,
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        filled: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF8E8E8E),
                            width: 1,
                          ),
                        ),
                        hintText: 'Phone number, username, or email',
                        hintStyle: TextStyle(
                          color: Color(0xFF8E8E8E),
                          fontSize: 14,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffcecbcb),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        filled: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF8E8E8E),
                            width: 1,
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0xFF8E8E8E),
                          fontSize: 14,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffcecbcb),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: Get.width,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAllNamed('/dashboard');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        fixedSize: Size(Get.width, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0XFFCACACA),
                            thickness: 0.3,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Divider(
                            color: Color(0XFFCACACA),
                            thickness: 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {

                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                          size: 28,
                        ),
                        Text(
                          '  Log in with Facebook',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              InkWell(
                onTap: () => Get.toNamed('/register'),
                child: RichText(
                  text: const TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    children: [
                      TextSpan(
                        text: '  Sign up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
