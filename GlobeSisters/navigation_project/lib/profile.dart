import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();

}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView (
        children: <Widget> [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              // PROFILE
              Container(
                color: Colors.pink,
                child: Image.network(
                  'https://th.bing.com/th/id/R.c24109be8e00a7cf1635e7b89812a83c?rik=za5jr0bVm1Qieg&pid=ImgRaw&r=0',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover
                )
              ),

              // PROFILE IMAGE
              Positioned(
                top: 400 - 77,
                child: CircleAvatar(
                  radius: 77,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/OIP.HnX8W4i5E21GijfzDsUacgHaEo?pid=ImgDet&rs=1'
                  ),
                )
              )
          ]),
            // CONTENT
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Text('Olivia Lee', style: Theme.of(context).textTheme.titleLarge),
                  Text('Visual Artist', style: Theme.of(context).textTheme.titleMedium),
                  Text('Age: 23', style: Theme.of(context).textTheme.bodyLarge),
                  Padding(
                    padding: const EdgeInsets.all(36),
                    child: Text(
                      'Hey there! I am Olivia Lee, a visual artist based in NYC. My art is inspired by the energy of the city and I love playing with bold colors and expressive brushstrokes. Follow along for a glimpse into my creative process and to see some of my latest pieces. Lets connect and share our love for art! ❤️ #visualartist #NYCartist #painting #colorfulart #cityscapeart',
                      style: TextStyle(
                        letterSpacing: 1.1
                      )
                    )
                  )

                ]
              )
            )
        ]
        )
      );
  }
}