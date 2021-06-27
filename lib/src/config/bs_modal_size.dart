import 'package:bs_flutter_utils/bs_flutter_utils.dart';

/// Class to set size of [BsModal] base on breakpint
class BsModalSize {
  /// define width of small modal
  static const double widthSm = 300.0;

  /// define width of medium modal
  static const double widthMd = 500.0;

  /// define width of large modal
  static const double widthLg = 800.0;

  /// define width of extra large modal
  static const double widthXl = 1140.0;

  /// define width of extra extra large modal
  static const double widthXxl = 1350.0;

  /// Constructor [BsModalSize]
  const BsModalSize({
    required this.breakPoints,
    required this.width,
  });

  /// define breakPoints for modal size
  final List<String> breakPoints;

  /// define with of modal
  final double width;

  /// define modal size small
  static const BsModalSize sm = BsModalSize(
    width: widthSm,
    breakPoints: [
      BreakPoint.stateSm,
      BreakPoint.stateMd,
      BreakPoint.stateLg,
      BreakPoint.stateXl,
      BreakPoint.stateXxl
    ],
  );

  /// define modal size medium
  static const BsModalSize md = BsModalSize(
    width: widthMd,
    breakPoints: [
      BreakPoint.stateMd,
      BreakPoint.stateLg,
      BreakPoint.stateXl,
      BreakPoint.stateXxl
    ],
  );

  /// define modal size large
  static const BsModalSize lg = BsModalSize(
    width: widthLg,
    breakPoints: [BreakPoint.stateLg, BreakPoint.stateXl, BreakPoint.stateXxl],
  );

  /// define modal size extra large
  static const BsModalSize xl = BsModalSize(
    width: widthXl,
    breakPoints: [BreakPoint.stateXl, BreakPoint.stateXl, BreakPoint.stateXxl],
  );

  /// define modal size extra extra large
  static const BsModalSize xxl = BsModalSize(
    width: widthXxl,
    breakPoints: [BreakPoint.stateXxl],
  );
}