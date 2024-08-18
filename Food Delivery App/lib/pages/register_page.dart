import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key, 
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Text editing controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Image(
                  image: AssetImage('lib/images/logo.png'),
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 10),
              // message, app slogan
              Text(
                "Hãy tạo một tài khoản cho bạn",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),
              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: "Tên đăng nhập",
                obscureText: false,
              ),
              const SizedBox(height: 10),
              // phone number textfield
              MyTextField(
                controller: phonenumberController,
                hintText: "Số điện thoại",
                obscureText: false,
              ),
              const SizedBox(height: 10),
              // email textfield
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 10),
              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: "Mật khẩu",
                obscureText: true,
              ),
              const SizedBox(height: 10),
              // confirm password textfield
              MyTextField(
                controller: confirmPasswordController,
                hintText: "Xác nhận mật khẩu",
                obscureText: true,
              ),
              const SizedBox(height: 10),
              // sign up button
              MyButton(
                text: "Đăng ký",
                onTap: () {},
              ),
              const SizedBox(height: 10),
              // already have an account? Login here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bạn có sẵn sàng để tạo một tài khoản?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Đăng nhập ngay.",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
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
