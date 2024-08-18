import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/pages/product_add_page.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery_app/models/restaurant.dart';

class ProductManagementPage extends StatefulWidget {
  @override
  State<ProductManagementPage> createState() => _ProductManagementPageState();
}

class _ProductManagementPageState extends State<ProductManagementPage> {
  @override
  Widget build(BuildContext context) {
    final restaurant = Provider.of<Restaurant>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quản lý sản phẩm",
          style: TextStyle(
            fontSize: 20, // Tăng kích thước chữ
            fontWeight: FontWeight.bold, // Làm chữ đậm         
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Hiển thị tất cả loại sản phẩm
            const Text(
              'Loại sản phẩm:',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold,
                ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 8.0,
              children: FoodCategory.values.map((category) {
                return Chip(
                  label: Text(category.toString().split('.').last),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            // Hiển thị tất cả sản phẩm
            const Text(
              'Tất cả sản phẩm:',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: restaurant.menu.length,
                itemBuilder: (context, index) {
                  final food = restaurant.menu[index];
                  return Card(
                    child: ListTile(
                      leading: Image.asset(food.imagePath, width: 50, height: 50, fit: BoxFit.cover),
                      title: Text(food.name),
                      subtitle: Text(food.description),
                      trailing: Text('${food.price} VND'),
                    ),
                  );
                },    
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (_) => const ProductAddPage(),
                  fullscreenDialog: true,
                ),
              )
              .then((_) => setState(() {})); // Chỗ này cần chuyển thành hàm Stateful
        },
        tooltip: 'Add New',
        child: const Icon(Icons.add),
      ),
    );
  }
}
