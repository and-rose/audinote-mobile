import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          surfaceTintColor: Theme.of(context).colorScheme.background,
          flexibleSpace: FlexibleSpaceBar(
            background: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                "assets/rrreflection.png",
                fit: BoxFit.cover,
              ),
            ),
            centerTitle: true,
            title: Text("Profile".toUpperCase(),
                style: Theme.of(context).textTheme.headline6),
            titlePadding: const EdgeInsetsDirectional.only(
              bottom: 2.0,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ],
          pinned: true,
          expandedHeight: 200.0,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Center(
              child: Column(
                children: [
                  loggedIn
                      ? (ElevatedButton(
                          onPressed: () {
                            debugPrint(loggedIn.toString());
                            setState(() {
                              loggedIn = false;
                            });
                          },
                          child: const Text("Log Out")))
                      : (ElevatedButton(
                          onPressed: () {
                            debugPrint(loggedIn.toString());
                            Navigator.pushNamed(context, '/login');
                            setState(() {
                              loggedIn = true;
                            });
                          },
                          child: const Text("Log In"))),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
