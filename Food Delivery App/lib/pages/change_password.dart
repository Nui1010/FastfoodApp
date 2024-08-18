import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  void _savePassword() {
    // Thêm logic lưu mật khẩu của bạn ở đây
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Đổi mật khẩu",
          style: TextStyle(
            fontSize: 20, // Tăng kích thước chữ
            fontWeight: FontWeight.bold, // Làm chữ đậm
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100.0), // Điều chỉnh padding để giữa các thành phần
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextField(
                  controller: _oldPasswordController,
                  hintText: 'Mật khẩu cũ',
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: _newPasswordController,
                  hintText: 'Mật khẩu mới',
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: _confirmPasswordController,
                  hintText: 'Xác nhận mật khẩu mới',
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                MyButton(
                  text: 'Lưu',
                  onTap: _savePassword,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
