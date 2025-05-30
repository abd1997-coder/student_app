import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';


import '../../../../core/core.dart';

class DateOfBirthWidget extends StatefulWidget {
  const DateOfBirthWidget({super.key, required this.onChange});
  final void Function(DateTime dateTime) onChange;
  @override
  State<DateOfBirthWidget> createState() => _DateOfBirthWidgetState();
}

class _DateOfBirthWidgetState extends State<DateOfBirthWidget> {
  // Replace these with whatever range and labels you need.
  // For instance, years can be from 1900 up to current year or beyond, etc.
  final List<String> _years = List<String>.generate(
    51,
    (int index) => (1975 + index).toString(),
  );
  final List<String> _months = List<String>.generate(
    12,
    (int index) => (index + 1).toString(),
  );
  final List<String> _days = List<String>.generate(
    31,
    (int index) => (index + 1).toString(),
  );
  // Selected values for the dropdowns.
  String? _selectedYear;
  String? _selectedMonth;
  String? _selectedDay;

  /// Checks if all dropdowns have been selected. If so, computes the DateTime
  /// and triggers the onChange callback.
  void _updateDate() {
    if (_selectedYear != null &&
        _selectedMonth != null &&
        _selectedDay != null) {
      final int year = int.parse(_selectedYear!);
      final int month = int.parse(_selectedMonth!);
      final int day = int.parse(_selectedDay!);

      try {
        // Construct the DateTime from the selected values.
        final DateTime date = DateTime(year, month, day);
        // Trigger the onChange callback.
        widget.onChange(date);
      } on Exception catch (e) {
        // Handle any errors such as invalid date combinations.
        debugPrint('Invalid date selected: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Label (e.g., "تاريخ الميلاد")
        const Text(
          'تاريخ الميلاد',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        // Row containing the three dropdowns.
        Row(
          children: <Widget>[
            // Year Dropdown
            Expanded(
              child: _buildDropdown(
                hint: 'العام',
                items: _years,
                value: _selectedYear,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedYear = newValue;
                    _updateDate();
                  });
                },
              ),
            ),
            const SizedBox(width: 8),
            // Month Dropdown
            Expanded(
              child: _buildDropdown(
                hint: 'الشهر',
                items: _months,
                value: _selectedMonth,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedMonth = newValue;
                    _updateDate();
                  });
                },
              ),
            ),
            const SizedBox(width: 8),
            // Day Dropdown
            Expanded(
              child: _buildDropdown(
                hint: 'اليوم',
                items: _days,
                value: _selectedDay,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedDay = newValue;
                    _updateDate();
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Helper widget method for building a dropdown with consistent styling.
  Widget _buildDropdown({
    required String hint,
    required List<String> items,
    required String? value,
    required ValueChanged<String?> onChanged,
  }) {
    return SearchableDDL<String>(
      autoValidateMode: AutovalidateMode.onUnfocus,
      hintText: hint,
      onChanged: onChanged,
      validator:
          (String? value) => validateInput(value, context, <ValidationType>[
            ValidationType.requiredField,
          ]),
      asyncItems: (String filter, LoadProps? loadProps) async {
        return items;
      },
    );
  }
}
