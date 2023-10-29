import 'package:core_ui/core_ui.dart';

class AppTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool filled;
  final Color? fillColor;
  final bool obscureText;
  final bool readOnly;
  final Widget? prefix;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool overrideValidator;
  final TextStyle? hintStyle;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final bool? isDescription;
//
  const AppTextField({
    required this.controller,
    this.isDescription,
    this.maxLines,
    this.textInputAction,
    this.filled = false,
    this.obscureText = false,
    this.readOnly = false,
    super.key,
    this.validator,
    this.fillColor,
    this.prefix,
    this.hintText,
    this.keyboardType,
    this.hintStyle,
    this.overrideValidator = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      validator: overrideValidator
          ? validator
          : (String? value) {
              if (value == null || value.isEmpty) {
                return StringConstants.requiredField;
              }
              return validator?.call(value);
            },
      keyboardType: keyboardType,
      obscureText: obscureText,
      readOnly: readOnly,
      decoration: isDescription == true
          ? InputDecoration(
              prefixIconColor: ApplicationColors.borderColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  Dimensions.size_8,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  Dimensions.size_8,
                ),
                borderSide: const BorderSide(
                  color: ApplicationColors.disabledColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  Dimensions.size_8,
                ),
                borderSide: const BorderSide(
                  color: ApplicationColors.primaryColor,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimensions.size_20,
                vertical: Dimensions.size_20,
              ),
              filled: filled,
              prefixIcon: prefix,
              fillColor: fillColor,
              hintText: hintText,
              hintStyle: hintStyle ?? AppFonts.normal16,
            )
          : InputDecoration(
              prefixIconColor: ApplicationColors.prefixIconColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  Dimensions.size_8,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  Dimensions.size_8,
                ),
                borderSide: const BorderSide(
                  color: ApplicationColors.disabledColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  Dimensions.size_8,
                ),
                borderSide: const BorderSide(
                  color: ApplicationColors.primaryColor,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimensions.size_20,
              ),
              filled: filled,
              prefixIcon: prefix,
              fillColor: fillColor,
              hintText: hintText,
              hintStyle: hintStyle ??
                  AppFonts.normal16.apply(
                    color: ApplicationColors.prefixIconColor,
                  ),
            ),
    );
  }
}
