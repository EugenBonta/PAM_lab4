// Data Layer - Category Data Model
import '../../domain/domain_models/category.dart';

class CategoryDataModel {
  final String title;
  final String icon;
  final String bgColor;

  CategoryDataModel({
    required this.title,
    required this.icon,
    required this.bgColor,
  });

  // Convert JSON to Data Model
  factory CategoryDataModel.fromJson(Map<String, dynamic> json) {
    return CategoryDataModel(
      title: json['title'],
      icon: json['icon'],
      bgColor: json['bg_color'],
    );
  }

  // Convert Data Model to Domain Model
  Category toDomainModel() {
    return Category(
      title: title,
      icon: icon,
      bgColor: bgColor,
    );
  }
}