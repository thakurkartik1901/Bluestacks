import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final String? title;
  final String? description;
  final String? subDescription;
  final List<Color>? colors;
  final BorderRadiusGeometry? borderRadius;

  const GradientContainer(
      {Key? key,
      this.title,
      this.description,
      this.subDescription,
      this.colors,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: colors!,
            ),
            borderRadius: borderRadius),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Text(
              title!,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.white),
            ),
            Text(
              description!,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 11,
                    color: Colors.white,
                  ),
            ),
            Text(
              subDescription!,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 11,
                    color: Colors.white,
                  ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
