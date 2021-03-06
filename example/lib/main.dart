import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:bs_flutter_modal/bs_flutter_modal.dart';
import 'package:bs_flutter_responsive/bs_flutter_responsive.dart';
import 'package:bs_flutter_selectbox/bs_flutter_selectbox.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  BsSelectBoxController _select =
      BsSelectBoxController(multiple: true, options: [
    BsSelectBoxOption(value: 1, text: Text('1')),
    BsSelectBoxOption(value: 2, text: Text('2')),
    BsSelectBoxOption(value: 3, text: Text('3')),
    BsSelectBoxOption(value: 4, text: Text('4')),
    BsSelectBoxOption(value: 5, text: Text('5')),
    BsSelectBoxOption(value: 6, text: Text('6')),
  ]);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bootstrap Modal'),
        ),
        body: BsRow(
          margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
          gutter: EdgeInsets.only(left: 15.0, right: 15.0),
          children: [
            BsCol(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Wrap(
                children: [
                  BsButton(
                    style: BsButtonStyle.primary,
                    margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
                    label: Text('Small Modal'),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => BsModal(
                              context: context,
                              dialog: BsModalDialog(
                                size: BsModalSize.sm,
                                child: BsModalContent(
                                  children: [
                                    BsModalContainer(
                                        title: Text('Content'),
                                        closeButton: true,
                                        onClose: () {
                                          Navigator.pop(context);
                                        }),
                                    BsModalContainer(
                                      child: Column(children: [
                                        BsSelectBox(
                                          hintTextLabel: 'Pilih salah satu',
                                          selectBoxController: _select,
                                        )
                                      ]),
                                    ),
                                    BsModalContainer(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      actions: [
                                        BsButton(
                                          style: BsButtonStyle.danger,
                                          label: Text('Close Modal'),
                                          prefixIcon: Icons.close,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                  BsButton(
                    style: BsButtonStyle.primary,
                    margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
                    label: Text('Default Modal'),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => BsModal(
                              context: context,
                              dialog: BsModalDialog(
                                child: BsModalContent(
                                  children: [
                                    BsModalContainer(
                                        title: Text('Content'),
                                        closeButton: true),
                                    BsModalContainer(
                                      child: Column(children: [
                                        Container(height: 1000),
                                        Text('Content')
                                      ]),
                                    ),
                                    BsModalContainer(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      actions: [
                                        BsButton(
                                          style: BsButtonStyle.danger,
                                          label: Text('Close Modal'),
                                          prefixIcon: Icons.close,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                  BsButton(
                    style: BsButtonStyle.primary,
                    margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
                    label: Text('Large Modal'),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => BsModal(
                              context: context,
                              dialog: BsModalDialog(
                                size: BsModalSize.lg,
                                child: BsModalContent(
                                  children: [
                                    BsModalContainer(
                                        title: Text('Content'),
                                        closeButton: true),
                                    BsModalContainer(
                                      child:
                                          Column(children: [Text('Content')]),
                                    ),
                                    BsModalContainer(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      actions: [
                                        BsButton(
                                          style: BsButtonStyle.danger,
                                          label: Text('Close Modal'),
                                          prefixIcon: Icons.close,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                  BsButton(
                    style: BsButtonStyle.primary,
                    margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
                    label: Text('Extra Large Modal'),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => BsModal(
                              context: context,
                              dialog: BsModalDialog(
                                size: BsModalSize.xl,
                                child: BsModalContent(
                                  children: [
                                    BsModalContainer(
                                        title: Text('Content'),
                                        closeButton: true),
                                    BsModalContainer(
                                      child:
                                          Column(children: [Text('Content')]),
                                    ),
                                    BsModalContainer(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      actions: [
                                        BsButton(
                                          style: BsButtonStyle.danger,
                                          label: Text('Close Modal'),
                                          prefixIcon: Icons.close,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                  BsButton(
                    style: BsButtonStyle.primary,
                    margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
                    label: Text('Extra extra Large Modal'),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => BsModal(
                              context: context,
                              dialog: BsModalDialog(
                                size: BsModalSize.xxl,
                                child: BsModalContent(
                                  children: [
                                    BsModalContainer(
                                        title: Text('Content'),
                                        closeButton: true),
                                    BsModalContainer(
                                      child:
                                          Column(children: [Text('Content')]),
                                    ),
                                    BsModalContainer(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      actions: [
                                        BsButton(
                                          style: BsButtonStyle.danger,
                                          label: Text('Close Modal'),
                                          prefixIcon: Icons.close,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                  BsButton(
                    style: BsButtonStyle.primary,
                    margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
                    label: Text('Centered Small Modal with No Radius'),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => BsModal(
                              context: context,
                              dialog: BsModalDialog(
                                size: BsModalSize.sm,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                child: BsModalContent(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  children: [
                                    BsModalContainer(
                                        title: Text('Content'),
                                        closeButton: true),
                                    BsModalContainer(
                                      child:
                                          Column(children: [Text('Content')]),
                                    ),
                                    BsModalContainer(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      actions: [
                                        BsButton(
                                          style: BsButtonStyle.danger,
                                          label: Text('Close Modal'),
                                          prefixIcon: Icons.close,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
