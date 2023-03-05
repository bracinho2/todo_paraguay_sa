import 'package:flutter/material.dart';

class CambonaSpacer {
  const CambonaSpacer._();

  static const double _minimumGridValue = 8.0;

  static CambonaSpacerSide get left =>
      CambonaSpacerSide(_minimumGridValue, _SidesFlag(1, 0, 0, 0));

  static CambonaSpacerSide get top =>
      CambonaSpacerSide(_minimumGridValue, _SidesFlag(0, 1, 0, 0));

  static CambonaSpacerSide get right =>
      CambonaSpacerSide(_minimumGridValue, _SidesFlag(0, 0, 1, 0));

  static CambonaSpacerSide get bottom =>
      CambonaSpacerSide(_minimumGridValue, _SidesFlag(0, 0, 0, 1));

  static CambonaSpacerSide get all =>
      CambonaSpacerSide(_minimumGridValue, _SidesFlag(1, 1, 1, 1));

  static CambonaSpacerSide get horizontal =>
      CambonaSpacerSide(_minimumGridValue, _SidesFlag(1, 0, 1, 0));

  static CambonaSpacerSide get vertical =>
      CambonaSpacerSide(_minimumGridValue, _SidesFlag(0, 1, 0, 1));
}

class CambonaSpacerSide {
  double spacer;
  _SidesFlag sidesFlag;

  CambonaSpacerSide(this.spacer, this.sidesFlag);

  EdgeInsets get none {
    return EdgeInsets.zero;
  }

  EdgeInsets get xxs {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.xxs);
  }

  EdgeInsets get xs {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.xs);
  }

  EdgeInsets get sm {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.sm);
  }

  EdgeInsets get md {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.md);
  }

  EdgeInsets get lg {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.lg);
  }

  EdgeInsets get xl {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.xl);
  }

  EdgeInsets get xxl {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.xxl);
  }

  EdgeInsets get xxxl {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.xxxl);
  }

  EdgeInsets _dimensionSize(
      double spacer, _SidesFlag sidesFlag, double factor) {
    return EdgeInsets.only(
      left: sidesFlag.leftFlag * spacer * factor,
      top: sidesFlag.topFlag * spacer * factor,
      right: sidesFlag.rightFlag * spacer * factor,
      bottom: sidesFlag.bottomFlag * spacer * factor,
    );
  }
}

class _SidesFlag {
  double leftFlag = 0;
  double topFlag = 0;
  double rightFlag = 0;
  double bottomFlag = 0;

  _SidesFlag(
    this.leftFlag,
    this.topFlag,
    this.rightFlag,
    this.bottomFlag,
  );
}

class _FactorHelper {
  static double xxs = 0.5;
  static double xs = 1;
  static double sm = 1.5;
  static double md = 2;
  static double lg = 4;
  static double xl = 8;
  static double xxl = 16;
  static double xxxl = 32;
}
