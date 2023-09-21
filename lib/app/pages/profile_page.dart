import 'package:budz/app/components/profile_header_component.dart';
import 'package:budz/app/data/mock.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}
