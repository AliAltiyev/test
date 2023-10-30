import 'package:home/order.dart';

class UserOrderTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? title;
  final Widget prefixIcon;
  final String hintText;
  final TextInputType? textInputType;
  const UserOrderTextField({
    required this.textEditingController,
    required this.prefixIcon,
    this.title,
    required this.hintText,
    this.textInputType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimensions.size_12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Title(
            color: ApplicationColors.black,
            child: Text(
              title ?? '',
              style: AppFonts.bold14,
            ),
          ),
          AppTextField(
            controller: textEditingController,
            hintText: hintText,
            keyboardType: textInputType,
            prefix: prefixIcon,
          ),
        ],
      ),
    );
  }
}
