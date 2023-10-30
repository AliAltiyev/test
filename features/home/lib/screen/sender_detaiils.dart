import 'package:home/order.dart';

class SenderDetailsScreen extends StatefulWidget {
  const SenderDetailsScreen({super.key});

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
          leading: const Icon(
            Icons.chevron_left_outlined,
            color: ApplicationColors.black,
          ),
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
        body: const SenderDetailsBody(),
      ),
    );
  }
}

class SenderDetailsBody extends StatefulWidget {
  const SenderDetailsBody({
    super.key,
  });

  @override
  State<SenderDetailsBody> createState() => _SenderDetailsBodyState();
}

class _SenderDetailsBodyState extends State<SenderDetailsBody> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const OrderTitle(),
          Padding(
            padding: const EdgeInsets.all(
              Dimensions.size_16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                StartDate(size: size),
                Padding(
                  padding: const EdgeInsets.only(
                    top: Dimensions.size_40,
                    bottom: Dimensions.size_20,
                  ),
                  child: Title(
                    color: ApplicationColors.black,
                    child: Text(
                      'Sender Details',
                      style: AppFonts.bold18,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: Dimensions.size_16,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CustomElevatedButton(
                            isDisabled: true,
                            text: 'Add Address',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CustomElevatedButton(
                            isDisabled: false,
                            text: 'Select Address',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SenderDetails(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SenderDetails extends StatefulWidget {
  const SenderDetails({super.key});

  @override
  State<SenderDetails> createState() => _SenderDetailsState();
}

class _SenderDetailsState extends State<SenderDetails> {
  final TextEditingController fullNameTextEditingController =
      TextEditingController();
  final TextEditingController emailTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserOrderTextField(
          textEditingController: TextEditingController(),
          textInputType: TextInputType.name,
          title: 'Full name*',
          hintText: 'Danilev Egor',
          prefixIcon: const Icon(
            Icons.person,
          ),
        ),
        UserOrderTextField(
          textInputType: TextInputType.name,
          textEditingController: fullNameTextEditingController,
          title: 'Email*',
          hintText: 'egor_zu@email.com',
          prefixIcon: const Icon(
            Icons.email,
          ),
        ),
        UserOrderTextField(
          textInputType: TextInputType.emailAddress,
          textEditingController: fullNameTextEditingController,
          title: 'Phone number*',
          hintText: '+375726014690',
          prefixIcon: const Icon(
            Icons.phone,
          ),
        ),
        const Divider(
          color: ApplicationColors.dividerColor,
        ),
        UserOrderTextField(
          textInputType: TextInputType.emailAddress,
          textEditingController: fullNameTextEditingController,
          title: 'Country*',
          hintText: 'Belarus',
          prefixIcon: const Icon(
            Icons.location_on,
          ),
        ),
        UserOrderTextField(
          textInputType: TextInputType.emailAddress,
          textEditingController: fullNameTextEditingController,
          title: 'City*',
          hintText: 'Minsk',
          prefixIcon: const Icon(
            Icons.location_city,
          ),
        ),
        InkWell(
          onTap: () {
            //TODO: Add  address line
          },
          focusColor: ApplicationColors.primaryColor,
          child: Text(
            'Add address line +',
            style: AppFonts.bold14.apply(
              color: ApplicationColors.primaryColor,
            ),
          ),
        ),
        UserOrderTextField(
          textEditingController: fullNameTextEditingController,
          prefixIcon: SizedBox(
            child: SvgPicture.asset(
              clipBehavior: Clip.antiAlias,
              fit: BoxFit.none,
              ImagePaths.zipcode,
              height: Dimensions.size_10,
            ),
          ),
          title: 'Postcode*',
          hintText: '220069',
        )
      ],
    );
  }
}
