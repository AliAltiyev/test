import 'package:home/order.dart';

class UserAddressCard extends StatelessWidget {
  final String username;
  final String address;

  const UserAddressCard({
    required this.username,
    required this.address,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimensions.size_16,
        vertical: Dimensions.size_20,
      ),
      decoration: AppDecoration.dark.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  username,
                  style: AppFonts.bold14.apply(
                    color: ApplicationColors.white,
                  ),
                ),
                const SizedBox(height: Dimensions.size_6),
                Text(
                  address,
                  style: AppFonts.bold14.apply(
                    color: ApplicationColors.white,
                  ),
                )
              ],
            ),
          ),
          AppIcons.edit
        ],
      ),
    );
  }
}
