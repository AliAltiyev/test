import 'package:home/order.dart';

class OrderTitle extends StatelessWidget {
  const OrderTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Title(
          color: ApplicationColors.black,
          child: Text(
            StringConstants.stepFirst,
            style: AppFonts.normal16,
          ),
        ),
      ],
    );
  }
}
