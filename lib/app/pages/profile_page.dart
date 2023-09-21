import 'package:budz/app/components/profile_card_category_component.dart';
import 'package:budz/app/components/profile_header_component.dart';
import 'package:budz/app/data/mock.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XFFF0F0F0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeaderComponent(
              userName: AppMock.userName,
              email: AppMock.email,
              userImage: AppMock.userImage,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 400,
                child: ListView.separated(
                    itemBuilder: (_, index) {
                      final item = AppMock.card.elementAt(index);
              
                      return ProfileCardCategoryComponent(
                        image: item.image,
                        categoryTitle: item.title
                      );
                    },
                    separatorBuilder: (_, __) => const SizedBox(height: 4),
                    itemCount: AppMock.card.length),
              ),
            )
          ],
        ),
      ),
    );
  }
}
