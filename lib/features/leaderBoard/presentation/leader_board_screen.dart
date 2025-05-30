import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});
  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetsManager.images.leaderBoardBackground.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 70),
            const Text(
              'قائمة المتصدرين',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
      
            // Top 3 Users
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildTopUser('assets/user2.png', 'جاد ماريني', 2),
                  _buildTopUser(
                    'assets/user1.png',
                    'فادي أحمد',
                    1,
                    crown: true,
                  ),
                  _buildTopUser('assets/user3.png', 'فادي أحمد', 3),
                ],
              ),
            ),
            const SizedBox(height: 60),
      
            // White List Container
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: 6,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/female_user.png'),
                      ),
                      title: const Text(
                        'إيمان محمد',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: const Text(
                        '3',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      shape:
                          index == 2
                              ? RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(12),
                              )
                              : null,
                    );
                  },
                ),
              ),
            ),
      
            // Footer
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              color: Palette.primary,
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/myscore.png'),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'محمد ساعاتي',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('+99', style: TextStyle(color: Colors.white)),
                      Text(
                        'ساعات الاستخدام: 354 ساعة',
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopUser(
    String imagePath,
    String name,
    int rank, {
    bool crown = false,
  }) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            CircleAvatar(
              radius: rank == 1 ? 40 : 30,
              backgroundImage: AssetImage(imagePath),
            ),
            if (crown)
              const Positioned(
                top: -8,
                child: Icon(Icons.emoji_events, color: Colors.amber, size: 24),
              ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
