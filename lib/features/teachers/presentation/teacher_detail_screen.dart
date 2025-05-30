import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/common/widget/appWidget/custom_photo_widget.dart';
import 'package:student_app/core/managers/assets/assets.gen.dart';
import 'package:student_app/core/managers/theme/palette.dart';

@RoutePage()
class TeacherDetailScreen extends StatelessWidget {
  const TeacherDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primary,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetsManager.images.backgroundCard.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,

              child: Column(
                children: <Widget>[
                  const SizedBox(height: 35),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              context.router.maybePop();
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              alignment: AlignmentDirectional.centerStart,
                              child: AssetsManager.svg.arrowBack.svg(),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'مدرسين',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'هنا تجد معلومات المدرس',
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Teacher Card
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 40),
                decoration: const BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(120),
                    topLeft: Radius.circular(120),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "أ . مهند بكر",
                                  style: TextStyle(
                                    color: Palette.stongPrimary,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "الكيمياء",
                                  style: TextStyle(
                                    color: Palette.stongPrimary,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AssetsManager.svg.expertIcon.svg(),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "5 سنوات",
                                      style: TextStyle(
                                        color: Palette.stongPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  children: [
                                    AssetsManager.svg.instgramIcon.svg(),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      child:
                                          AssetsManager.svg.facebookIcon.svg(),
                                    ),
                                    AssetsManager.svg.phoneIcon.svg(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          child: CustomPhotoWidget(hideName: true, size: 200),
                        ),
                      ],
                    ),
                    const Text(
                      "نبذة : ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Palette.stongPrimary
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      child: Text("استاذ الرياضيات للبكالوريا هو مدرس متخصص في تدريس مادة الرياضيات لطلاب المرحلة الثانوية العامة، ويستعد الطلاب لاجتياز امتحان البكالوريا في هذه المادة. يقوم استاذ الرياضيات بتدريس مجموعة متنوعة من المواضيع الرياضية التي تشمل الجبر، الهندسة، الإحصاء، والتحليل. يقوم الاستاذ بشرح المفاهيم الرياضية بوضوح وبطريقة سهلة الفهم ."),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
