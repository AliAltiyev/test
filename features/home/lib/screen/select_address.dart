import 'package:home/order.dart';

class SelectAddressScreen extends StatelessWidget {
  const SelectAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchTextEditingController =
        TextEditingController();

    return GradientBackground(
      image: ImagePaths.primaryBackground,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                return context.read<OrderBloc>().add(OnPopEvent());
              },
              child: AppIcons.chevronLeft),
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
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              const OrderTitle(),
              SelectAddressBody(
                searchTextEditingController: searchTextEditingController,
                title: StringConstants.senderDetails,
                userAddressCard: const UserAddressCard(
                  username: 'Denilev Egor',
                  address: 'Belarus Minsk',
                ),
              ),
              SelectAddressBody(
                searchTextEditingController: searchTextEditingController,
                title: 'Recipient address',
                userAddressCard: const UserAddressCard(
                  username: 'Ko Yuri',
                  address: 'Italy, Naple, Via Toledo 256, 220069',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: CustomElevatedButton(isDisabled: true, text: 'Next'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class SelectAddressBody extends StatelessWidget {
  final TextEditingController searchTextEditingController;
  final String title;
  final Widget userAddressCard;

  const SelectAddressBody({
    required this.searchTextEditingController,
    required this.title,
    required this.userAddressCard,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.size_16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: Dimensions.size_40,
                bottom: Dimensions.size_20,
              ),
              child: Title(
                color: ApplicationColors.black,
                child: Text(
                  title,
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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        return context.read<OrderBloc>().add(
                              OnPopEvent(),
                            );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                          right: Dimensions.size_10,
                        ),
                        child: CustomElevatedButton(
                          isDisabled: false,
                          text: StringConstants.addAddress,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: CustomElevatedButton(
                        isDisabled: true,
                        text: StringConstants.selectAddress,
                      ),
                    ),
                  )
                ],
              ),
            ),
            UserOrderTextField(
              textEditingController: searchTextEditingController,
              prefixIcon:  AppIcons.search,
              hintText: 'Search',
            ),
            userAddressCard,
          ],
          // White decorations
        ),
      ),
    );
  }
}
