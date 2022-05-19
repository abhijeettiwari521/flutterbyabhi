import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/catalog.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      :
        // ignore: unnecessary_null_comparison
        assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, MyRoutes.cartRoute),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        // ignore: deprecated_member_use
                        context.theme.buttonColor,
                      ),
                      shape: MaterialStateProperty.all(
                        const StadiumBorder(),
                      ),
                    ),
                    child: "Add to Cart".text.make())
                .wh(120, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.xl.make(),
                    10.heightBox,
                    "Dolores erat magna dolore et sanctus voluptua et takimata ipsum.Lorem est amet est sadipscing dolor voluptua rebum eirmo d, nonumy invidunt diam labore sit tempor takimata dolor voluptua et."
                        .text
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
