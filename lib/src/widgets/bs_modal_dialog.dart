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
    this.mainAxisAlignment = MainAxisAlignment.center,
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

    return LayoutBuilder(
      builder: (context, constraints) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          elevation: 0,
          backgroundColor: Color(0x00000000),
          child: Container(
            height: constraints.maxHeight,
            child: Row(
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Expanded(child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: mainAxisAlignment,
                      children: [
                        Container(
                          width: size.breakPoints.contains(breakPoint.state) ? size.width : BsModalSize.widthMd,
                          child: child,
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}