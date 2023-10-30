import 'package:home/order.dart';

class SenderDetailsScreen extends StatefulWidget {
  const SenderDetailsScreen({
    super.key,
  });

  @override
  State<SenderDetailsScreen> createState() => _SenderDetailsScreenState();
}

class _SenderDetailsScreenState extends State<SenderDetailsScreen> {
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
          children: const <Widget>[
            SenderDetailsBody(
              form: SenderDetailsForm(
                isRecipientAddress: false,
              ),
              isRecipientAddress: false,
            ),
            SenderDetailsBody(
              isRecipientAddress: true,
              form: SenderDetailsForm(isRecipientAddress: true,),
            ),
          ],
        ),
      ),
    );
  }
}
