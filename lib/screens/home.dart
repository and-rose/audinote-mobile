import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                "assets/uuundulate.png",
                fit: BoxFit.cover,
              ),
            ),
            centerTitle: true,
            title: Image.asset(
              "assets/audinote-logo.png",
              fit: BoxFit.contain,
              height: 30,
            ),
            titlePadding: const EdgeInsetsDirectional.only(
              start: 0.0,
              bottom: 10.0,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          pinned: true,
          expandedHeight: 200.0,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Recent", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
