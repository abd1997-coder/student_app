import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

void  showMaterialPurchaseSheet({
  required BuildContext context,
  required int balance,
  required String cost,
  required Function() onClickBuy,
  required String objectNmae
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    backgroundColor: Colors.transparent,
    builder:
        (_) => MaterialPurchaseSheetContent(
          balance: balance,
          cost: cost,
          onClickBuy: onClickBuy,
          objectNmae: objectNmae,
        ),
  );
}

class MaterialPurchaseSheetContent extends StatefulWidget {
  final int balance;
  final String cost;
  final Function() onClickBuy;
  final String objectNmae;
  const MaterialPurchaseSheetContent({
    super.key,
    required this.balance,
    required this.cost,
    required this.onClickBuy,
    required this.objectNmae,
  });

  @override
  State<MaterialPurchaseSheetContent> createState() =>
      _MaterialPurchaseSheetContentState();
}

class _MaterialPurchaseSheetContentState
    extends State<MaterialPurchaseSheetContent> {
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
            // height: 700,
            height: 500,
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
                 Text(
                  'هل تريد شراء ${widget.objectNmae}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Palette.yallow,
                  ),
                ),
                const SizedBox(height: 24),

                // --- toggle buttons: with/without tests ---
                // Container(
                //   margin: const EdgeInsets.symmetric(horizontal: 40),
                //   decoration: const BoxDecoration(
                //     color: Palette.gray,
                //     borderRadius: BorderRadius.all(Radius.circular(12)),
                //   ),
                //   child: Row(
                //     children: <Widget>[
                //       Expanded(
                //         child: InkWell(
                //           onTap: () {
                //             selectedTap = 0;
                //             setState(() {});
                //           },
                //           child: Container(
                //             height: 45,
                //             alignment: Alignment.center,
                //             decoration: BoxDecoration(
                //               color:
                //                   (selectedTap == 0)
                //                       ? Palette.yallow
                //                       : Palette.gray,
                //               borderRadius: const BorderRadius.all(
                //                 Radius.circular(12),
                //               ),
                //             ),
                //             child: Text(
                //               "بدون اختبارات",
                //               style: TextStyle(
                //                 color:
                //                     (selectedTap == 0)
                //                         ? Palette.white
                //                         : Palette.black,
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Expanded(
                //         child: InkWell(
                //           onTap: () {
                //             selectedTap = 1;
                //             setState(() {});
                //           },
                //           child: Container(
                //             height: 45,
                //             alignment: Alignment.center,
                //             decoration: BoxDecoration(
                //               color:
                //                   (selectedTap == 1)
                //                       ? Palette.yallow
                //                       : Palette.gray,
                //               borderRadius: const BorderRadius.all(
                //                 Radius.circular(12),
                //               ),
                //             ),
                //             child: const Text(
                //               "مع اختبارات",
                //               style: TextStyle(
                //                 color: Palette.black,
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // const SizedBox(height: 40),

                // --- info text ---
                Text(
                  'علماً أن رصيدك الحالي هو: ${widget.balance} نقطة',
                  style: const TextStyle(
                    color: Palette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'سيتم خصم ${widget.cost} نقطة من رصيدك',
                  style: const TextStyle(
                    color: Palette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),

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
