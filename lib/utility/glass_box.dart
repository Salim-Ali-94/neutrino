import "package:flutter/material.dart";
import "dart:ui";


class GlassBox extends StatelessWidget {

  final backdrop;
  const GlassBox({ super.key, required this.backdrop });

  @override
  Widget build(BuildContext context) {

    return ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                                     topRight: Radius.circular(20)),

                     child: Container(height: 80, padding: EdgeInsets.all(2),
                                      color: Color(0x77000000),
                                      // color: Color(0xaa302d43),
                                      // color: Color(0x99302d43),
                                      // color: Color(0x55302d43),
                                      child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                                            child: Container(alignment: Alignment.bottomCenter, child: backdrop))));

  }

}
