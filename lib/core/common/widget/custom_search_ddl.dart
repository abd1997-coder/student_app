import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class SearchableDDL<T> extends StatelessWidget {
  const SearchableDDL({
    super.key,
    required this.hintText,
    this.asyncItems,
    this.selectedItem,
    this.showSearchBox = false,
    this.onChanged,
    this.validator,
    required this.autoValidateMode,
    this.borderColor,
    this.itemAsString,
  });
  final String hintText;
  final T? selectedItem;
  final void Function(T? value)? onChanged;
  final String Function(T item)? itemAsString;
  final Future<List<T>> Function(String filter, LoadProps? loadProps)?
  asyncItems;
  final bool showSearchBox;
  final String? Function(T?)? validator;
  final AutovalidateMode autoValidateMode;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      autoValidateMode: autoValidateMode,

      compareFn: (T item1, T item2) {
        return item1 == item2;
      },
      suffixProps: const DropdownSuffixProps(
        dropdownButtonProps: DropdownButtonProps(
          iconClosed: Icon(Icons.keyboard_arrow_down, size: 24),
          iconOpened: Icon(Icons.keyboard_arrow_up, size: 24),
        ),
      ),

      popupProps: PopupProps<T>.menu(
        showSearchBox: showSearchBox,
        showSelectedItems: true,

        itemBuilder:
            (BuildContext context, T item, bool isDisabled, bool isSelected) =>
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item.toString(),
                    style: context.titleSmall?.copyWith(
                      color:
                          isSelected
                              ? context.colorScheme.primary
                              : context.colorScheme.onSurface,
                    ),
                  ),
                ),
        menuProps: MenuProps(borderRadius: BorderRadius.circular(5)),
        searchFieldProps: TextFieldProps(
          style: context.bodySmall?.copyWith(fontWeight: FontWeight.w500),
          decoration: const InputDecoration(
            constraints: BoxConstraints(maxHeight: 46),
            border: OutlineInputBorder(),
          ),
        ),
        scrollbarProps: ScrollbarProps(
          thumbColor: Theme.of(context).primaryColor,
          trackRadius: const Radius.circular(3),
          trackVisibility: true,
          thumbVisibility: true,
          radius: const Radius.circular(3),
          thickness: 2,
          interactive: true,
          padding: const EdgeInsets.all(2),
        ),
        constraints: const BoxConstraints(maxHeight: 300),
        fit: FlexFit.loose,
      ),
      decoratorProps: DropDownDecoratorProps(
        baseStyle: context.bodySmall?.copyWith(fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          hintStyle: context.bodySmall?.copyWith(
            fontWeight: FontWeight.w400,
            color: context.theme.hintColor,
          ),
          hintText: hintText,
          constraints: const BoxConstraints(minHeight: 46),

          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: context.colorScheme.error),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: context.colorScheme.error),
          ),
          errorStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: context.labelLarge?.fontSize ?? 12,
            color: context.colorScheme.error,
            height: 0,
          ),
          errorMaxLines: 3,
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: borderColor ?? Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: borderColor ?? Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: borderColor ?? Colors.transparent),
          ),
          filled: true,
          fillColor: context.colorScheme.surface,
        ),
      ),
      items: asyncItems,

      onChanged: onChanged,
      selectedItem: selectedItem,
      validator: validator,
    );
  }
}
