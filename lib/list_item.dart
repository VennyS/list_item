import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Widget? visual;
  final Text? title;
  final Text? description;
  final Widget? control;

  const ListItem({
    super.key,
    this.visual,
    this.title,
    this.description,
    this.control,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (visual != null) ...[
              visual!,
              const SizedBox(width: 16),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (title != null) title!,
                  const SizedBox(
                    height: 4,
                  ),
                  if (description != null) description!,
                ],
              ),
            ),
            if (control != null) ...[
              const SizedBox(
                width: 16,
              ),
              control!
            ],
          ],
        ));
  }
}
