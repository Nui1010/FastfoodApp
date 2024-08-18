import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/change_password.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tài khoản",
          style: TextStyle(
            fontSize: 20, // Tăng kích thước chữ
            fontWeight: FontWeight.bold, // Làm chữ đậm
          ),
         ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surface, 
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tên người dùng',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'email@example.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Cập nhật thông tin cá nhân'),
              onTap: () {
                // Navigate to update personal info page
              },
            ),
            Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Thay đổi mật khẩu'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChangePassword(),));
              },
            ),
            Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Xác thực hai yếu tố'),
              onTap: () {
                // Navigate to two-factor authentication page
              },
            ),
            Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Ưu đãi của tôi'),
              onTap: () {
                // Navigate to my offers page
              },
            ),
            Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Giới thiệu bạn bè'),
              onTap: () {
                // Navigate to refer a friend page
              },
            ),
            Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Liên hệ hỗ trợ'),
              onTap: () {
                // Navigate to support page
              },
            ),
            Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Câu hỏi thường gặp'),
              onTap: () {
                // Navigate to FAQ page
              },
            ),
          ],
        ),
      ),
    );
  }
}
