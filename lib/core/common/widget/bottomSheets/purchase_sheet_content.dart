import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

void showVideoPurchaseSheet({
  required BuildContext context,
  required int balance,
  required String cost,
  required Function() onClickBuy,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    backgroundColor: Colors.transparent,
    builder:
        (_) => VideoPurchaseSheetContent(
          balance: balance,
          cost: cost,
          onClickBuy: onClickBuy,
        ),
  );
}

class VideoPurchaseSheetContent extends StatefulWidget {
  final int balance;
  final String cost;
  final Function() onClickBuy;
  const VideoPurchaseSheetContent({
    super.key,
    required this.balance,
    required this.cost,
    required this.onClickBuy,
  });

  @override
  State<VideoPurchaseSheetContent> createState() =>
      _VideoPurchaseSheetContentState();
}

class _VideoPurchaseSheetContentState extends State<VideoPurchaseSheetContent> {
  bool withTests = false;
  int selectedTap = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 300,
            margin: const EdgeInsets.only(top: 32),
            padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // --- the coin icon at top ---
                const SizedBox(height: 16),

                // --- title ---
                const Text(
                  'هل تريد شراء الفيديو ..',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Palette.yallow,
                  ),
                ),
                const SizedBox(height: 24),

                // --- toggle buttons: with/without tests ---
                const SizedBox(height: 20),

                // --- info text ---
                Text(
                  'سيتم خصم ${widget.cost} نقطة من رصيدك',
                  style: const TextStyle(
                    color: Palette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'علماً أن رصيدك الحالي هو : ${widget.balance} نقطة',
                  style: const TextStyle(
                    color: Palette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // --- action buttons ---
                Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          widget.onClickBuy();
                        },
                        child: Container(
                          height: 45,
                          width: 90,

                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Palette.yallow,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: const Text(
                            "شراء",
                            style: TextStyle(
                              color: Palette.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 90),
                      InkWell(
                        onTap: () {
                          context.router.maybePop();
                        },
                        child: Container(
                          height: 45,
                          width: 90,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Palette.gray,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: const Text(
                            "الغاء",
                            style: TextStyle(
                              color: Palette.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 4),
            ),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.amber.shade100,
              child: AssetsManager.svg.priceIcon.svg(width: 60, height: 60),
            ),
          ),
        ],
      ),
    );
  }
}
