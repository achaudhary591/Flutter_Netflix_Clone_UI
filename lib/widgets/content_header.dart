import 'package:flutter/material.dart';
import 'widgets.dart';
import '../models/content_model.dart';

class ContentHeader extends StatelessWidget {

  final Content featuredContent;

  const ContentHeader({Key key, this.featuredContent}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )
          ),
        ),
        Positioned(
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 40.0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                icon: Icons.add,
                title: 'List',
                onTap: () => print('My List'),
              ),
              _PlayButton(),
              VerticalIconButton(
                icon: Icons.info_outline,
                title: 'Info',
                onTap: () => print('Info'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () => print('Play'),
        style: TextButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
        ),
        icon: const Icon(
          Icons.play_arrow,
          size: 30.0,
        ),
        label: const Text(
          'Play',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        )
    );
  }
}

