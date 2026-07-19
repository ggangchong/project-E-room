import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'package:project_eroom/widgets/custom_text_field.dart';
import 'package:project_eroom/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CircleAvatar(
                radius: 45,
                backgroundColor: Color(0xFFFFA743),
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'CODE ROOM',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                '로그인하고 시작하세요',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),
               Center(
                child: SizedBox(
                  width: 300,
                  child: const CustomTextField(
                    hintText: '아이디',
                  ),
                ),
              ),

              const SizedBox(height: 15),
                
              Center(
                child: SizedBox(
                  width: 300,
                  child: const CustomTextField(
                    hintText: '비밀번호',
                    obscureText: true,
                  ),
                ),
              ),

              const SizedBox(height: 35),

              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFA743),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  child: const Text(
                    '로그인',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '계정찾기',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),

                  const Text(
                    '|',
                    style: TextStyle(color: Colors.grey),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      '가입하기',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}