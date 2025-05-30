import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController nameController = TextEditingController(
    text: "محمد ساعتلي",
  );
  final TextEditingController phoneController = TextEditingController(
    text: "0936854178",
  );
  final TextEditingController familyPhoneController = TextEditingController(
    text: "0936854178",
  );
  final TextEditingController ageController = TextEditingController(text: "22");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        backgroundColor: Palette.primary,
        title: const Text(
          "المعلومات الشخصية",
          style: TextStyle(color: Palette.white),
        ),
        actions: const <Widget>[
          Icon(Icons.arrow_forward_ios, color: Palette.white),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Palette.gray,
                    child: Icon(Icons.person, size: 60, color: Palette.primary),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Palette.primary,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Icon(Icons.edit, color: Palette.white),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            const SizedBox(height: 20),
            buildTextField("اسمك", nameController),
            buildTextField("رقم الهاتف", phoneController),
            buildTextField("رقم هاتف الأهل", familyPhoneController),
            buildTextField("العمر", ageController),
            buildTextField("كلمة المرور", null, isPassword: true),

            const SizedBox(height: 20),
            GlobalButton(
              height: 65,
              onPressed: () async {},
              borderRadius: 50,
              child: Text(
                "حفظ",
                style: context.bodyMedium?.copyWith(
                  color: context.colorScheme.surface,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
    String label,
    TextEditingController? controller, {
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label + " :",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 8),
        Container(
          height: 55,
          decoration: BoxDecoration(
            color: Palette.gray, // background color
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              const BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextField(
            controller: controller,
            obscureText: isPassword,
            style: const TextStyle(
              fontSize: 16,
              color:
                  Palette
                      .stongPrimary, // change this to your desired font color
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Palette.gray,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
