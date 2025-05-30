import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class AccreditedLibrariesScreen extends StatefulWidget {
  const AccreditedLibrariesScreen({Key? key}) : super(key: key);

  @override
  State<AccreditedLibrariesScreen> createState() =>
      _AccreditedLibrariesScreenState();
}

class _AccreditedLibrariesScreenState extends State<AccreditedLibrariesScreen> {
  final Map<String, List<LibraryInfo>> _libraries = {
    'دمشق': List.generate(
      3,
      (index) => LibraryInfo(
        name: 'مكتبة الأندلس',
        address: 'الجميلية - جانب مدرسة السلام',
        phone: '0928475893',
      ),
    ),
    'حمص': [],
    'حلب': [],
    'اللاذقية': [],
  };

  String _expandedCity = 'دمشق';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Palette.primary,
        title: const Text(
          'المكتبات المعتمدة',
          style: TextStyle(fontWeight: FontWeight.bold, color: Palette.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children:
              _libraries.entries.map((entry) {
                final isExpanded = _expandedCity == entry.key;
                return Column(
                  children: [
                    GestureDetector(
                      onTap:
                          () => setState(
                            () => _expandedCity = isExpanded ? '' : entry.key,
                          ),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 0,
                        ),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: isExpanded ? Palette.primary : Palette.gray,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                entry.key,
                                style: TextStyle(
                                  color: isExpanded ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 60,
                              decoration: const BoxDecoration(
                                color: Palette.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  topLeft: Radius.circular(12),
                                ),
                              ),
                              child: Icon(
                                isExpanded
                                    ? Icons.expand_less
                                    : Icons.expand_more,
                                color:
                                    isExpanded
                                        ? Colors.white
                                        : Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (isExpanded)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children:
                              entry.value.map((library) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        library.name,
                                        style: const TextStyle(
                                          color: Colors.deepPurple,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text('العنوان: ${library.address}'),
                                      const SizedBox(height: 2),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.phone,
                                            color: Colors.deepPurple,
                                            size: 16,
                                          ),
                                          const SizedBox(width: 6),
                                          Text(library.phone),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                        ),
                      ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}

class LibraryInfo {
  final String name;
  final String address;
  final String phone;

  LibraryInfo({required this.name, required this.address, required this.phone});
}
