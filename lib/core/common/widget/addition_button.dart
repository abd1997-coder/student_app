import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class AdditionButton extends StatelessWidget {
  const AdditionButton({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith((
          Set<WidgetState> states,
        ) {
          if (!states.contains(WidgetState.disabled)) {
            return context.colorScheme.secondary;
          }
          return const Color.fromRGBO(216, 223, 225, 1);
        }),
      ),
      onPressed: onPressed,
      icon: const Icon(Icons.add),
    );
  }
}
