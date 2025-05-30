import 'package:flutter/material.dart';
import 'package:student_app/core/common/widget/bottomSheets/delete_item_sheet_content.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: 'تم الرد على سؤالك.',
      body: " راجع قسم الردود على أسألني",
      date: '2024/04/17',
      isRead: true,
    ),
    NotificationItem(
      title: 'تم تأكيد رقم الهاتف بنجاح',
      body: "",
      date: '2024/04/17',
      isRead: false,
    ),
    NotificationItem(
      title: 'تم تأكيد رقم الهاتف بنجاح',
      body: "",
      date: '2024/04/17',
      isRead: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.gray,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.router.maybePop();
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      alignment: AlignmentDirectional.centerStart,
                      child: AssetsManager.svg.arrowBack.svg(),
                    ),
                  ),

                  Text(
                    'الإشعارات',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      deleteBottomSheet(context , 'حذف جميع الإشعارات؟');
                    },
                    child: AssetsManager.svg.deleteIcon.svg(),
                  ),
                ],
              ),
            ),
            // Notification list
            Expanded(
              child:
                  notifications.isNotEmpty
                      ? ListView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        itemCount: notifications.length,
                        itemBuilder: (context, index) {
                          final item = notifications[index];
                          return Dismissible(
                            key: Key(item.date + item.title),
                            direction: DismissDirection.endToStart,
                            onDismissed: (_) {
                              // TODO: remove item
                            },
                            background: Container(
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.only(right: 24),
                              color: Colors.redAccent,
                              child: const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              margin: const EdgeInsets.only(bottom: 12),
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Palette.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.title,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    item.body,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    alignment: AlignmentDirectional.centerEnd,
                                    child: Text(
                                      item.date,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      )
                      : Center(child: EmptyState()),
            ),
          ],
        ),
      ),
    );
  }


}

class NotificationItem {
  final String title;
  final String body;
  final String date;
  final bool isRead;

  NotificationItem({
    required this.title,
    required this.body,
    required this.date,
    this.isRead = true,
  });
}

class EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.notifications, color: Palette.stongPrimary, size: 35),
        const SizedBox(height: 8),
        Text(
          'لا يوجد اشعارات',
          style: TextStyle(fontSize: 14, color: Colors.grey[500]),
        ),
      ],
    );
  }
}
