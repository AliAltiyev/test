import 'package:home/order.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
        body: const OrderBody(),
      ),
    );
  }
}

class OrderBody extends StatefulWidget {
  const OrderBody({
    super.key,
  });

  @override
  State<OrderBody> createState() => _OrderBodyState();
}

class _OrderBodyState extends State<OrderBody> {
  final TextEditingController fullNameTextEditingController =
      TextEditingController();
  final TextEditingController emailTextEditingController =
      TextEditingController();
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
                          padding: EdgeInsets.only(right: Dimensions.size_8),
                          child: CustomElevatedButton(
                            text: 'Add Address',
                            isDisabled: true,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.size_8),
                          child: CustomElevatedButton(
                            text: 'Select Address',
                            isDisabled: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                UserOrderTextField(
                  textInputType: TextInputType.name,
                  fullNameTextEditingController: fullNameTextEditingController,
                  title: 'Full name*',
                  hintText: 'Danilev Egor',
                  prefixIcon: const Icon(
                    Icons.person,
                  ),
                ),
                UserOrderTextField(
                  textInputType: TextInputType.name,
                  fullNameTextEditingController: fullNameTextEditingController,
                  title: 'Email*',
                  hintText: 'egor_zu@email.com',
                  prefixIcon: const Icon(
                    Icons.email,
                  ),
                ),
                UserOrderTextField(
                  textInputType: TextInputType.emailAddress,
                  fullNameTextEditingController: fullNameTextEditingController,
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
                  fullNameTextEditingController: fullNameTextEditingController,
                  title: 'Country*',
                  hintText: 'Belarus',
                  prefixIcon: const Icon(
                    Icons.location_on,
                  ),
                ),
                UserOrderTextField(
                  textInputType: TextInputType.emailAddress,
                  fullNameTextEditingController: fullNameTextEditingController,
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
                  fullNameTextEditingController: fullNameTextEditingController,
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
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    fullNameTextEditingController.dispose();
    super.dispose();
  }
}
