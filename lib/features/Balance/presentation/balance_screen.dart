import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  final List<TransactionItem> transactions = <TransactionItem>[
    TransactionItem(
      "تم تعبئة 45663 نقطة في رصيدك",
      "2024/04/17",
      Colors.purple,
      AssetsManager.svg.addBalanceIcon.svg(),
    ),
    TransactionItem(
      "تم سحب 45663 نقطة من رصيدك من شراء نطة فريزة",
      "2024/04/17",
      Colors.red,
      AssetsManager.svg.minusBalanceIcon.svg(),
    ),
    TransactionItem(
      "تم تعبئة 45663 نقطة في رصيدك",
      "2024/04/17",
      Colors.purple,
      AssetsManager.svg.addBalanceIcon.svg(),
    ),
    TransactionItem(
      "تم سحب 45663 نقطة من رصيدك من شراء نطة فريزة",
      "2024/04/17",
      Colors.red,
      AssetsManager.svg.addBalanceIcon.svg(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 260,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetsManager.images.backgroundCard.provider(),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 80),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "الرصيد",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Palette.background,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        padding: const EdgeInsets.all(4),
                        child: Image(
                          image: AssetsManager.images.walletIcon.provider(),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "رصيدك هو :",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "25000 نقطة",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "ID الحساب :455454 ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "سجل التعبئة",
            style: TextStyle(
              color: Palette.primary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: transactions.length,
              itemBuilder: (BuildContext context, int index) {
                return buildTransactionCard(transactions[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTransactionCard(TransactionItem item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: item.color.withOpacity(0.3), width: 1.5),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: item.color.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item.description,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  item.date,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          item.icon,
        ],
      ),
    );
  }
}

class TransactionItem {
  final String description;
  final String date;
  final Color color;
  final SvgPicture icon;

  TransactionItem(this.description, this.date, this.color, this.icon);
}
