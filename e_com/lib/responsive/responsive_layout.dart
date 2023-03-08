import 'package:e_com/responsive/dimension.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;
  const ResponsiveLayout({Key? key, required this.mobileBody, required this.desktopBody, required this.tabletBody}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < mobileWidth){
            return mobileBody;
          }else if(constraints.maxWidth < tabletWidth){
            return tabletBody;
          }
          else{
            return desktopBody;
          }
        }
    );
  }
}
