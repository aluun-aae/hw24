import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hw24/components/tittle.dart';
import 'package:hw24/costans/colors.dart';

import '../sotrudnik.dart';
import 'button.dart';
import 'listtile.dart';

class SotrudnikCard extends StatefulWidget {
  final String image;
  final String name;
  SotrudnikCard({this.image, this.name = ""});

  @override
  _SotrudnikCard createState() => _SotrudnikCard();
}

class _SotrudnikCard extends State<SotrudnikCard> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.white,
            shadowColor: Colors.transparent,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => SotrudniksInfo()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title:
                      Tittle(fontWeight: FontWeight.w400, tittle: widget.name),
                  trailing: SizedBox(
                    width: 30,
                    child: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            context: context,
                            builder: (context) {
                              return Container(
                                height: height * 0.5,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20,
                                            right: 20,
                                            top: 20,
                                            bottom: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Tittle(
                                              fontWeight: FontWeight.w700,
                                              fontsize: 20,
                                              tittle: "Позвонить",
                                            ),
                                            Container(
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: AppColors.grey3,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              width: 30,
                                              child: IconButton(
                                                  icon: Icon(
                                                    Icons.close,
                                                    size: 15,
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop()),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 40),
                                        child: Tittle(
                                          fontWeight: FontWeight.w400,
                                          fontsize: 16,
                                          tittle:
                                              "Жыпаркулов Мырзабек Жыпаркулович",
                                        ),
                                      ),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      Listtile(
                                        button: TelButton(),
                                        title1: "Телефон WhatsApp",
                                        title2: "+9965551234321",
                                      ),
                                      Listtile(
                                        button: TelButton(),
                                        title1: "Телефон WhatsApp",
                                        title2: "+9965551234321",
                                      ),
                                      Listtile(
                                        button: TelButton(),
                                        title1: "Телефон WhatsApp",
                                        title2: "+9965551234321",
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      icon: Icon(
                        Icons.call,
                        size: 20,
                        color: AppColors.green,
                      ),
                    ),
                  ),
                  leading: Image.asset(
                    widget.image,
                    height: 42,
                  ),
                ),
              ),
            )),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
