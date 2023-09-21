import 'package:flutter/material.dart';

class AppMock {
  const AppMock._();

  static const userName = "Lucka";
  static const userImage =
      "https://avatars.githubusercontent.com/u/54218517?v=4";
  static const email = "luckadev.silva@gmail.com";
  static final card = [
    CategoryCard(
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
        image: "assets/lock.png", title: "Alterar Senha", icon: Icons.arrow_right),
  ];
}

class CategoryCard {
  final String image;
  final String title;
  final IconData icon;

  CategoryCard({required this.image, required this.title, required this.icon});
}
