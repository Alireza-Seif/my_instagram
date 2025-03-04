import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
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
                          'Sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () => Get.toNamed('/login'),
                  child: RichText(
                    text: const TextSpan(
                      text: "Don you have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                      children: [
                        TextSpan(
                          text: '  Log in',
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
      ),
    );
  }
}
