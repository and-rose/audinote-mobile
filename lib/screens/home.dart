import 'package:flutter/material.dart';

import '../widgets/RecentTrackCard.dart';

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
              bottom: 20.0,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Recent", style: TextStyle(fontSize: 20)),
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView.separated(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                          itemBuilder: (context, index) {
                            return RecentTrackCard();
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
