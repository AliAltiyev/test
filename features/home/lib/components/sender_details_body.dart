import 'package:home/order.dart';

class SenderDetailsBody extends StatelessWidget {
  final bool isRecipientAddress;
  final Widget form;

  const SenderDetailsBody({
    required this.isRecipientAddress,
    required this.form,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          isRecipientAddress ? const SizedBox.shrink() : const OrderTitle(),
          Padding(
            padding: const EdgeInsets.all(
              Dimensions.size_16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                isRecipientAddress
                    ? const SizedBox.shrink()
                    : StartDate(size: size),
                Padding(
                  padding: const EdgeInsets.only(
                    top: Dimensions.size_40,
                    bottom: Dimensions.size_20,
                  ),
                  child: Title(
                    color: ApplicationColors.black,
                    child: Text(
                      isRecipientAddress
                          ? StringConstants.recipientAddress
                          : StringConstants.senderDetails,
                      style: AppFonts.bold18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: Dimensions.size_16,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: Dimensions.size_10,
                          ),
                          child: CustomElevatedButton(
                            isDisabled: true,
                            text: StringConstants.addAddress,
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            context.read<OrderBloc>().add(
                                  SelectAddressEvent(),
                                );
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(
                              right: Dimensions.size_10,
                            ),
                            child: CustomElevatedButton(
                              isDisabled: false,
                              text: StringConstants.selectAddress,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                form
              ],
            ),
          ),
        ],
      ),
    );
  }
}
