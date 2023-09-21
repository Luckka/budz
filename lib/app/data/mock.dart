import 'package:flutter/material.dart';

class AppMock {
  const AppMock._();

  static const userName = "Lucka";
  static const userImage = "https://avatars.githubusercontent.com/u/54218517?v=4";
  static const email = "luckadev.silva@gmail.com";
  static final card = [
    CategoryCard(image: Image.asset("assets/pet.png"), title: "Meus Pets", icon: Icons.arrow_right),
    CategoryCard(image: Image.asset("assets/profile.png"), title: "Editar Perfil", icon: Icons.arrow_right),
    CategoryCard(image: Image.asset("assets/tools.png"), title: "Ferramentas", icon: Icons.arrow_right),
    CategoryCard(image: Image.asset("assets/premium.png"), title: "Ferramentas", icon: Icons.arrow_right),
    CategoryCard(image: Image.asset("assets/lock.png"), title: "Ferramentas", icon: Icons.arrow_right),
  ];

}


class CategoryCard {
  final Image image;
  final String title;
  final IconData icon;

  CategoryCard({required this.image, required this.title,required this.icon});
}