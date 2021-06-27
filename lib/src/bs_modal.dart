import 'package:bs_flutter_modal/bs_flutter_modal.dart';
import 'package:flutter/material.dart';

/// Widget of Bootstrap Modal
class BsModal extends StatelessWidget {
  /// Construct [BsModal]
  const BsModal({
    Key? key,
    required this.context,
    required this.dialog,
  }) : super(key: key);

  /// define context of [BsModal]
  final BuildContext context;

  /// define diaolog of [BsModal]
  final BsModalDialog dialog;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(child: dialog)],
    );
  }
}