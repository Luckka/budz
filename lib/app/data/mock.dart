import 'package:flutter/material.dart';

class AppMock {
  const AppMock._();

  static const userName = "Lucka";
  static const userImage =
      "https://avatars.githubusercontent.com/u/54218517?v=4";
  static const email = "luckadev.silva@gmail.com";
  static final card = [
    CategoryCard(
      topLeft: 16,
      topRight: 16,
      image: "assets/pet.png", title: "Meus Pets", icon: Icons.arrow_right),
    CategoryCard(
        image: "assets/profile.png",
        title: "Editar Perfil",
        icon: Icons.arrow_right),
    CategoryCard(
        image: "assets/tools.png", title: "Ferramentas", icon: Icons.arrow_right),
    CategoryCard(
        image: "assets/premium.png", title: "Gerenciar Assinatura", icon: Icons.arrow_right),
    CategoryCard(
        bottomLeft: 16,
        bottomRight: 16,
        image: "assets/lock.png", title: "Alterar Senha", icon: Icons.arrow_right),
  ];
}

class CategoryCard {
  final String image;
  final String title;
  final IconData icon;
  final double? topRight;
  final double? topLeft;
  final double? bottomRight;
  final double? bottomLeft;


  CategoryCard({required this.image, required this.title, required this.icon,this.topRight, this.topLeft, this.bottomRight, this.bottomLeft,});
}
