import 'package:flutter/material.dart';
import 'package:musicapp/constant/colors.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  Color songColor = const Color(0xFF251117);

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: songColor,
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.close, color: Colors.transparent),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Singing Now',
                        style: TextTheme.bodyMedium?.copyWith(
                          color: CustomColors.primaryColor,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fhot.detik.com%2Fbook%2Fd-5721477%2Ftablo-epik-high-terbitkan-buku-blonote-versi-bahasa-indonesia-rilis-september&psig=AOvVaw3i86Yl_-iSKDAv1wlPSaf-&ust=1708332438365000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNj63LDAtIQDFQAAAAAdAAAAABAE"),
                            radius: 30,
                          ),
                          Text(
                            'Tablo (Epik High)',
                            style: TextTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                  Icon(Icons.close),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
