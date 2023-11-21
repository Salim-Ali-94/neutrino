import "package:flutter/material.dart";
import "dart:ui";


class GlassBox extends StatelessWidget {

  final backdrop;
  const GlassBox({ super.key, required this.backdrop });

  @override
  Widget build(BuildContext context) {

    return ClipRRect(borderRadius: BorderRadius.circular(10),

                     child: Container(height: 100, padding: EdgeInsets.all(2),
                                      child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                                            child: Container(alignment: Alignment.bottomCenter,
                                                                             child: backdrop))));

  }

}
