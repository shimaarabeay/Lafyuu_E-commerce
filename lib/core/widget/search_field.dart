import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';
import '../utils/color_manager.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false,
  });

  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;

  @override
  State<SearchField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<SearchField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() => _isFocused = _focusNode.hasFocus);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: TextFormField(
        focusNode: _focusNode,
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        onSaved: widget.onSaved,
        validator: (value) =>
        (value == null || value.isEmpty) ? 'This field is required' : null,
        style: TextStyles.bold12.copyWith(color: ColorManager.neutralDark),
        decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          prefixIcon: widget.suffixIcon != null
              ? IconTheme(
            data: IconThemeData(
              color: _isFocused
                  ? ColorManager.primaryBlue
                  : const Color(0xFF9098B1),
            ),
            child: widget.suffixIcon!,
          )
              : null,
          hintText: widget.hintText,
          hintStyle: TextStyles.bold12.copyWith(
            color: const Color(0xFF9098B1),
          ),
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(const Color(0xFFE6E9E9)),
          enabledBorder: buildBorder(const Color(0xFFE6E9E9)),
          focusedBorder: buildBorder(ColorManager.primaryBlue),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(width: 1, color: color),
    );
  }
}
