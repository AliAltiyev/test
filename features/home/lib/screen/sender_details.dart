import 'package:home/order.dart';

class SenderDetailsScreen extends StatelessWidget {
  SenderDetailsScreen({
    super.key,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      image: ImagePaths.primaryBackground,
      child: Scaffold(
        appBar: AppBar(
          leading: AppIcons.chevronLeft,
          centerTitle: true,
          backgroundColor: ApplicationColors.transparient,
          elevation: Dimensions.size_0,
          title: Text(
            StringConstants.ordering,
            style: AppFonts.bold18.apply(
              color: ApplicationColors.black,
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            // Here i ve got error when I scroll list view,cause i 
            // ve used same form key for two different widgets
            SenderDetailsBody(
              key: UniqueKey(),
              formKey: formKey,
              form: const SenderDetailsForm(
                isRecipientAddress: false,
              ),
              isRecipientAddress: false,
            ),
            SenderDetailsBody(
              key: UniqueKey(),
              formKey: formKey,
              isRecipientAddress: true,
              form: const SenderDetailsForm(
                isRecipientAddress: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Dimensions.size_32,
                horizontal: Dimensions.size_16,
              ),
              child: CustomElevatedButton(
                onTap: () {
                  if (formKey.currentState?.validate() ?? false) {
                    //?Maybe a bit later will add this feature

                    // context.read<OrderBloc>().add(SaveSenderDetailsEvent(
                    // ));
                  }
                },
                isDisabled: true,
                text: StringConstants.nextStep,
              ),
            )
          ],
        ),
      ),
    );
  }
}
