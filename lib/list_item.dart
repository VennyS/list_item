import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Widget? visual;
  final bool showVisual;
  final Text? title;
  final bool showTitle;
  final Text? description;
  final bool showDescription;
  final Widget? control;
  final bool showControl;

  const ListItem(
      {super.key,
      this.visual,
      this.showVisual = false,
      this.title,
      this.showTitle = true,
      this.description,
      this.showDescription = true,
      this.control,
      this.showControl = false})
      : assert(!showVisual || (showVisual && visual != null),
            "[showVisual] = true, а visual == null"),
        assert(!showTitle || (showTitle && title != null),
            "[showTitle] = true, а title == null"),
        assert(!showDescription || (showDescription && description != null),
            "[showDescription] = true, а description == null"),
        assert(!showControl || (showControl && control != null),
            "[showControl] = true, а control == null");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showVisual && visual != null) ...[visual!,
            const SizedBox(width: 16),
          ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (showTitle && title != null) title!,
                  const SizedBox(
                    height: 4,
                  ),
                  if (showDescription && description != null) description!,
                ],
              ),
            ),
            const SizedBox(
              width: 18,
            ),
            if (showControl && control != null) ...[control!,// Здесь будет правая часть
              const SizedBox(width: 16),
            ],
          ],
        )
      );
  }
}
