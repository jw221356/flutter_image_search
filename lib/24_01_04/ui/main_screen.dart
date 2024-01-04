import 'package:flutter/material.dart';
import 'package:flutter_image_search/24_01_04/ui/widget/image_item_widget.dart';
import 'package:flutter_image_search/24_01_04/data/model/image_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      width:2,
                      color:Color(0xFF4FB6B2),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      width:2,
                      color:Color(0xFF4FB6B2),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    final imageItem = ImageItem(
                      imageUrl: 'https://cdn.pixabay.com/photo/2017/09/26/13/21/apples-2788599_150.jpg',
                      tags: 'apple',
                    );
                    return ImageItemWidget(imageItem: imageItem);
                  },
                  gridDelegate: const
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 32,
                      mainAxisSpacing: 32,
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
