import 'package:bs_flutter_modal/bs_flutter_modal.dart';
import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

/// Widget of Bootstrap Modal Dialog
class BsModalDialog extends StatelessWidget {
  /// Construct [BsModalDialog]
  const BsModalDialog({
    Key? key,
    this.size = BsModalSize.md,
    this.child,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  /// define size of [BsModalDialog]
  final BsModalSize size;

  /// define child of [BsModalDialog]
  final Widget? child;

  /// define crossAxisAlignment of [BsModalDialog]
  final CrossAxisAlignment crossAxisAlignment;

  /// define mainAxisAlignment of [BsModalDialog]
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    BreakPoint breakPoint = BreakPoint.of(context);

    return Dialog(
      insetPadding: EdgeInsets.zero,
      elevation: 0,
      backgroundColor: Color(0x00000000),
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: crossAxisAlignment,
                  mainAxisAlignment: mainAxisAlignment,
                  children: [
                    Scrollbar(
                        child: SingleChildScrollView(
                          child: Container(
                            width: size.breakPoints.contains(breakPoint.state)
                                ? size.width
                                : BsModalSize.widthMd,
                            child: child,
                          ),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}