import 'package:core_ui/core_ui.dart';


class BaseButton extends StatelessWidget {
  final String text;

  final VoidCallback? onTap;

  final ButtonStyle? buttonStyle;

  final TextStyle? buttonTextStyle;

  final bool? isDisabled;

  final double? height;

  final double? width;

  final EdgeInsets? margin;

  final Alignment? alignment;

  const BaseButton({
    Key? key,
    required this.text,
    this.onTap,
    this.buttonStyle,
    this.buttonTextStyle,
    this.isDisabled,
    this.height,
    this.width,
    this.margin,
    this.alignment,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
