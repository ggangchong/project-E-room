import 'package:flutter/material.dart';
import 'package:project_eroom/widgets/custom_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool showIdMessage = false;
  bool canUseId = true;

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool showPasswordMessage = false;
  bool passwordMatch = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가입'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            const Text('가입',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              )
            ),

            const SizedBox(height: 20),

            Center(
              child: SizedBox(
                width: 380,
                child: const CustomTextField(hintText: '이름'),
              ),
            ),
            
            const SizedBox(height: 15),

            Center(
              child: SizedBox(
                width: 380,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            hintText: '아이디',
                          ),
                        ),

                        const SizedBox(width: 10),

                        SizedBox(
                          width: 100,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                showIdMessage = true;
                                  canUseId = !canUseId;
                              });
                            },

               
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFFA743),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            child: const Text('중복확인',
                              style: TextStyle(
                              fontSize: 12,
                              ),
                            ),

                          ),
                        ),
              
                      ],
                    ),

                    if (showIdMessage)
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 5),
                    
                        child: Text(
                          canUseId
                            ? '사용 가능한 아이디입니다.'
                            : '이미 사용 중인 아이디입니다.',
                          style: TextStyle(
                            color: canUseId ? Colors.green : Colors.red,
                            fontSize: 13,
                          ),
                        ),
                      ),

             const SizedBox(height: 15),

              Center(
                child: SizedBox(
                  width: 380,
                  child: CustomTextField(
                    hintText: '비밀번호',
                    obscureText: true,
                    controller: passwordController,
                    onChanged: (value) {
                      setState(() {
                        showPasswordMessage = true;
                        passwordMatch =
                            passwordController.text ==
                            confirmPasswordController.text;
                      });
                    }
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Center(
                child: SizedBox(
                  width: 380,
                  child: CustomTextField(
                    hintText: '비밀번호 확인',
                    obscureText: true,
                    controller: confirmPasswordController,
                    onChanged: (value) {
                      setState(() {
                        showPasswordMessage = true;
                        passwordMatch =
                            passwordController.text ==
                            confirmPasswordController.text;
                      });
                    },
                  ),
                ),
              ),

              if (showPasswordMessage)
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 5),
                child: Text(
                  passwordMatch
                          ? '비밀번호가 일치합니다.'
                          : '비밀번호가 일치하지 않습니다.',
                  style: TextStyle(
                    color: passwordMatch ? Colors.green : Colors.red,
                    fontSize: 13,
                  ),
                ),
              ),

                  ],
                ),
              )
            ),

          ],
        ),
      ),

    );
  }
}
