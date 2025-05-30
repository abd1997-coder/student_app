import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class QuestionWithActionWidget extends StatelessWidget {
  const QuestionWithActionWidget({
    super.key,
    required this.question,
    required this.action,
    this.actionArgs = const <String>[],
    required this.onPressed,
  });
  final void Function() onPressed;
  final String question;
  final String action;
  final List<String> actionArgs;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text.rich(
        TextSpan(
          children: <InlineSpan>[
            TextSpan(
              text: question,
              style: context.bodySmall?.copyWith(fontWeight: FontWeight.w400),
            ),
            const WidgetSpan(child: SizedBox(width: Dimensions.space4)),
            TextSpan(
              text: action,
              style: context.bodySmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: context.theme.colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
