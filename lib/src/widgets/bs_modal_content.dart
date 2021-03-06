import 'package:bs_flutter_modal/bs_flutter_modal.dart';
import 'package:flutter/material.dart';

/// Widget of Bootstrap Modal Content
class BsModalContent extends StatelessWidget {
  /// Construct [BsModalContent]
  const BsModalContent({
    Key? key,
    this.decoration,
    this.padding = const EdgeInsets.all(20.0),
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.children = const [],
  }) : super(key: key);

  /// define decoration [BsModalContent]
  final Decoration? decoration;

  final EdgeInsets padding;

  /// define crossAxisAlignment of [BsModalContent]
  final CrossAxisAlignment crossAxisAlignment;

  /// define mainAxisAlignement of [BsModalContent]
  final MainAxisAlignment mainAxisAlignment;

  /// define children of [BsModalContent]
  final List<BsModalContainer> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding,
      decoration: decoration != null ? decoration : BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        children: children,
      ),
    );
  }
}