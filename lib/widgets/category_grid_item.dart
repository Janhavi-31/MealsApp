import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget{
  const CategoryGridItem({super.key, required this.category, required this.onSelectCategory});

final Category category;
final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [
          //     category.color.withValues(alpha: (0.55 * 255).toInt())
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   )
        ),
        child: Text(category.title, style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
      
        ),),
      ),
    );
   
  }
}