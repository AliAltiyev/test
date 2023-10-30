import 'package:home/order.dart';

class SenderDetailsForm extends StatefulWidget {
  final bool isRecipientAddress;

  const SenderDetailsForm({
    required this.isRecipientAddress,
    super.key,
  });

  @override
  State<SenderDetailsForm> createState() => _SenderDetailsFormState();
}

class _SenderDetailsFormState extends State<SenderDetailsForm> {
  final TextEditingController fullNameTextEditingController =
      TextEditingController();
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController phoneNumberTextEditingController =
      TextEditingController();
  final TextEditingController countryTextEditingController =
      TextEditingController();

  final TextEditingController cityTextEditingController =
      TextEditingController();

  final TextEditingController postCodeTextEditingController =
      TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        UserOrderTextField(
          textEditingController: fullNameTextEditingController,
          textInputType: TextInputType.name,
          title: StringConstants.fullName,
          hintText: widget.isRecipientAddress
              ? StringConstants.recipientUsernameHintText
              : StringConstants.senderUserNameHintText,
          prefixIcon: AppIcons.user,
        ),
        UserOrderTextField(
          textInputType: TextInputType.name,
          textEditingController: fullNameTextEditingController,
          title: StringConstants.email,
          hintText: widget.isRecipientAddress
              ? StringConstants.recipientEmailHintText
              : StringConstants.senderEmailHintText,
          prefixIcon: AppIcons.email,
        ),
        UserOrderTextField(
          textInputType: TextInputType.emailAddress,
          textEditingController: fullNameTextEditingController,
          title: StringConstants.phone,
          hintText: widget.isRecipientAddress
              ? StringConstants.recipientPhoneHintText
              : StringConstants.senderPhoneHintText,
          prefixIcon: AppIcons.phone,
        ),
        const Divider(
          color: ApplicationColors.dividerColor,
        ),
        UserOrderTextField(
          textInputType: TextInputType.emailAddress,
          textEditingController: fullNameTextEditingController,
          title: StringConstants.country,
          hintText: widget.isRecipientAddress
              ? StringConstants.recipientCountryHintText
              : StringConstants.senderCountryHintText,
          prefixIcon: AppIcons.location,
        ),
        UserOrderTextField(
          textInputType: TextInputType.text,
          textEditingController: fullNameTextEditingController,
          title: StringConstants.city,
          hintText: widget.isRecipientAddress
              ? StringConstants.recipientCityHintText
              : StringConstants.senderCityHintText,
          prefixIcon: SvgPicture.asset(
            clipBehavior: Clip.antiAlias,
            fit: BoxFit.none,
            ImagePaths.city,
            height: Dimensions.size_10,
          ),
        ),
        UserOrderTextField(
          textInputType: TextInputType.text,
          textEditingController: fullNameTextEditingController,
          title: StringConstants.addAddressFirst,
          hintText: widget.isRecipientAddress
              ? StringConstants.recipientAddressLineHintText
              : StringConstants.senderAddressLineHintText,
          prefixIcon: SvgPicture.asset(
            clipBehavior: Clip.antiAlias,
            fit: BoxFit.none,
            ImagePaths.location,
            height: Dimensions.size_10,
          ),
        ),
        InkWell(
          onTap: () {
            //TODO: Add  address line
          },
          focusColor: ApplicationColors.primaryColor,
          child: Text(
            StringConstants.addAddressLine,
            style: AppFonts.bold14.apply(
              color: ApplicationColors.primaryColor,
            ),
          ),
        ),
        UserOrderTextField(
          textEditingController: fullNameTextEditingController,
          prefixIcon: SvgPicture.asset(
            clipBehavior: Clip.antiAlias,
            fit: BoxFit.none,
            ImagePaths.zipCode,
            height: Dimensions.size_10,
          ),
          title: StringConstants.postCode,
          hintText: widget.isRecipientAddress
              ? StringConstants.recipientPostCodeHintText
              : StringConstants.senderPostCodeHintText,
        )
      ],
    );
  }

  @override
  void dispose() {
    fullNameTextEditingController.dispose();
    emailTextEditingController.dispose();
    phoneNumberTextEditingController.dispose();
    countryTextEditingController.dispose();
    cityTextEditingController.dispose();
    postCodeTextEditingController.dispose();
    super.dispose();
  }
}
