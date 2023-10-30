import 'package:core_ui/core_ui.dart';

class CustomElevatedButton extends BaseButton {
  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  

  const CustomElevatedButton({
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    required bool isDisabled,
    double? height,
    double? width,
    required String text,
    super.key,
  }) : super(
          text: text,
          onTap: onTap,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
        height: height ?? Dimensions.size_44,
        width: width ?? double.maxFinite,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Dimensions.size_32,
          ),
          color: !isDisabled
              ? ApplicationColors.black.withOpacity(
                  Dimensions.size_0_1,
                )
              : ApplicationColors.primaryColor,
        ),
        child: ElevatedButton(
          style: const ButtonStyle(
              elevation: MaterialStatePropertyAll<double?>(
                Dimensions.size_0,
              ),
              backgroundColor: MaterialStatePropertyAll<Color?>(
                ApplicationColors.transparient,
              )),
          onPressed: onTap,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              leftIcon ?? const SizedBox.shrink(),
              Text(
                text,
                style: buttonTextStyle ??
                    AppFonts.normal16.apply(
                      color: !isDisabled
                          ? ApplicationColors.disabledColor
                          : ApplicationColors.white,
                    ),
              ),
              rightIcon ?? const SizedBox.shrink(),
            ],
          ),
        ),
      );
}
