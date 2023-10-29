import 'package:home/order.dart';
class StartDate extends StatelessWidget {
  final Size size;

  const StartDate({
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimensions.size_32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: Dimensions.size_8,
            ),
            child: Title(
              color: ApplicationColors.black,
              child: Text(
                'Start date',
                style: AppFonts.bold14,
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              //DatePicker without picking date or time
              //Code stub
              await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now(),
              );
            },
            child: Container(
              height: size.height / Dimensions.size_18,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ApplicationColors.borderColor,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      Dimensions.size_8,
                    ),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.size_16,
                        ),
                        child: Icon(
                          Icons.calendar_month_outlined,
                          color: ApplicationColors.borderColor,
                        ),
                      ),
                      Text(
                        DateTime.now().toString().substring(0, 10),
                      ),
                    ],
                  ),
                  const Spacer()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}