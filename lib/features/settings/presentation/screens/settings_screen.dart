import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
        return const Center(
      child: Text("Soong", style: TextStyle(color: Palette.primary)),
    );
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Palette.white,
        body: Stack(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetsManager.images.backgroundCard.provider(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: const BoxDecoration(
                color: Palette.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () {
                        context.router.push(const ProfileRoute());
                      },
                      child: _buildProfileHeader(),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: const Divider(),
                    ),
                    _buildTabs(context),

                    _buildToggleTile(
                      label: 'الوضع الداكن',
                      icon: AssetsManager.svg.settings.darkMode.svg(),
                      value: true,
                      onChanged: (v) {},
                    ),
                    _buildToggleTile(
                      label: 'التنبيهات',
                      icon: AssetsManager.svg.settings.notificationIcon.svg(),
                      value: false,
                      onChanged: (v) {},
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        context.router.push(const DownloadedLeasonsRoute());
                      },
                      child: _buildMenuItem(
                        'دروسي المحملة',
                        AssetsManager.svg.settings.downloadIcon.svg(),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.router.push(const QuestionResponseRoute());
                      },
                      child: _buildMenuItem(
                        'الردود على أسئلتي',
                        AssetsManager.svg.settings.repledQuestionIcon.svg(),
                        badge: '3',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.router.push(const SavedItemsRoute());
                      },
                      child: _buildMenuItem(
                        'العناصر المحفوظة',
                        AssetsManager.svg.settings.saveIcon.svg(),
                      ),
                    ),
                    _buildMenuItem(
                      'الأسئلة الشائعة',
                      AssetsManager.svg.settings.questions.svg(),
                    ),
                    _buildMenuItem(
                      'حول نجاحي',
                      AssetsManager.svg.settings.aboutIcon.svg(),
                    ),
                    _buildMenuItem(
                      'سياسة الخصوصية',
                      AssetsManager.svg.settings.privacyPolicy.svg(),
                    ),
                    _buildMenuItem(
                      'شروط الاستخدام',
                      AssetsManager.svg.settings.termsCondation.svg(),
                    ),
                    const SizedBox(height: 8),
                    _buildMenuItem(
                      'تسجيل الخروج',
                      const Icon(Icons.logout),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Palette.gray,
            child: Icon(Icons.person, size: 40, color: Palette.stongPrimary),
          ),
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'محمد ساعتي',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'المعلومات الشخصية',
                style: TextStyle(color: Palette.primary, fontSize: 18),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: const Icon(Icons.arrow_forward_ios, size: 18),
        ),
      ],
    );
  }

  Widget _buildTabs(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                context.router.push(const BalanceRoute());
              },
              child: _buildTab(
                title: 'رصيدي',
                isSelected: true,
                icon: AssetsManager.svg.priceIcon.svg(),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: InkWell(
              onTap: () {
                context.router.push(const AccreditedLibrariesRoute());
              },
              child: _buildTab(
                title: 'المكتبات المعتمدة',
                isSelected: false,
                icon: AssetsManager.svg.settings.officeSpaces.svg(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab({
    required String title,
    required bool isSelected,
    required Widget icon,
  }) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          margin: const EdgeInsets.only(top: 32),
          decoration: const BoxDecoration(
            color: Palette.gray,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 35,
          height: 35,
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Palette.gray,
          ),
          child: icon,
        ),
      ],
    );
  }

  Widget _buildToggleTile({
    required String label,
    required Widget icon,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      leading: Container(
        width: 35,
        height: 35,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
        ),
        child: icon,
      ),
      title: Text(
        label,
        style: const TextStyle(color: Colors.black, fontSize: 15),
      ),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Palette.primary,
      ),
    );
  }

  Widget _buildMenuItem(
    String label,
    Widget icon, {
    String? badge,
    Color? color,
  }) {
    return ListTile(
      leading: Container(
        width: 35,
        height: 35,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
        ),
        child: icon,
      ),
      title: Text(
        label,
        style: TextStyle(color: color ?? Colors.black, fontSize: 15),
      ),
      trailing:
          badge != null
              ? CircleAvatar(
                radius: 12,
                backgroundColor: Palette.primary,
                child: Text(
                  badge,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
              : null,
    );
  }
}
