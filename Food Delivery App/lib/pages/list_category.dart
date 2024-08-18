import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/pages/category_add_page.dart';

class ListCategoryPage extends StatefulWidget {
  const ListCategoryPage({super.key});

  @override
  State<ListCategoryPage> createState() => _ListCategoryPageState();
}

class _ListCategoryPageState extends State<ListCategoryPage> {
  // Dummy data list to simulate categories
  final List<FoodCategory> _categories = List<FoodCategory>.from(FoodCategory.values);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Danh sách loại sản phẩm",
          style: TextStyle(
            fontSize: 20, // Tăng kích thước chữ
            fontWeight: FontWeight.bold, // Làm chữ đậm         
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _categories.length,
          itemBuilder: (context, index) {
            final category = _categories[index];
            return Card(
              child: ListTile(
                title: Text(
                  category.toString().split('.').last, // Hiển thị tên loại sản phẩm
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        // Thực hiện hành động sửa ở đây
                        Navigator.of(context)
                            .push(
                              MaterialPageRoute(
                                builder: (_) => const CategoryAddPage(),
                                fullscreenDialog: true,
                              ),
                            )
                            .then((_) => setState(() {})); // Cập nhật sau khi chỉnh sửa
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        // Thực hiện hành động xóa ở đây
                        setState(() {
                          _categories.removeAt(index); // Xóa mục khỏi danh sách
                        });
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (_) => const CategoryAddPage(),
                  fullscreenDialog: true,
                ),
              )
              .then((_) => setState(() {})); // Cập nhật sau khi thêm mới
        },
        tooltip: 'Add New',
        child: const Icon(Icons.add),
      ),
    );
  }
}
