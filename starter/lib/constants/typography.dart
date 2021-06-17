import 'package:flutter/material.dart';
import 'package:starter/constants/colors.dart';

const fontFamily = '';

enum CKLTitle { Heading, Page, Section, Modal, Card }

enum CKLCaption { C1, C2, C3 }

enum CKLParagraph { Semibold, Regular, Light }

enum CLKLink { Regular16, Regular12 }

enum CKLLabel { Semibold, HeavyPrimary, Heavy }

enum CKLInput { Regular, RegularDark }

extension TitleExension on CKLTitle {
  TextStyle get style {
    switch (this) {
      case CKLTitle.Heading:
        return const TextStyle(
          fontSize: 64,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
          height: 54,
          color: kNeutralGrayishColorDark,
        );
      case CKLTitle.Page:
        return const TextStyle(
          fontSize: 44,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 48,
          color: kNeutralGrayishColorDark,
        );
      case CKLTitle.Section:
        return const TextStyle(
          fontSize: 32,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 42,
          color: kNeutralGrayishColorDark,
        );
      case CKLTitle.Modal:
        return const TextStyle(
          fontSize: 24,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.0,
          height: 30,
          color: kNeutralGrayishColorDark,
        );
      case CKLTitle.Card:
        return const TextStyle(
          fontSize: 18,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.7,
          height: 30,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 64,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
          height: 54,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}

extension CaptionExension on CKLCaption {
  TextStyle get style {
    switch (this) {
      case CKLCaption.C1:
        return const TextStyle(
          fontSize: 24,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.0,
          height: 36,
          color: kNeutralGrayishColorDark,
        );
      case CKLCaption.C2:
        return const TextStyle(
          fontSize: 18,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.75,
          height: 36,
          color: kNeutralGrayishColorDark,
        );
      case CKLCaption.C3:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.78,
          height: 30,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.78,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}

extension ParagraphExtension on CKLParagraph {
  TextStyle get style {
    switch (this) {
      case CKLParagraph.Semibold:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      case CKLParagraph.Regular:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.0,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      case CKLParagraph.Light:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.0,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}

extension LinkExtension on CLKLink {
  TextStyle get style {
    switch (this) {
      case CLKLink.Regular16:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      case CLKLink.Regular12:
        return const TextStyle(
          fontSize: 12,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}

extension LabelExtension on CKLLabel {
  TextStyle get style {
    switch (this) {
      case CKLLabel.Semibold:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 16,
          color: kNeutralGrayishColorDark,
        );
      case CKLLabel.HeavyPrimary:
        return const TextStyle(
          fontSize: 12,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 16,
          color: kPrimaryColorDark,
        );
      case CKLLabel.Heavy:
        return const TextStyle(
          fontSize: 12,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 16,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 16,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}

extension InputExtension on CKLInput {
  TextStyle get style {
    switch (this) {
      case CKLInput.Regular:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 30,
          letterSpacing: 0.78,
          color: kNeutralGrayishColor,
        );
      case CKLInput.RegularDark:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 30,
          letterSpacing: 0.78,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 30,
          letterSpacing: 0.78,
          color: kNeutralGrayishColor,
        );
    }
  }
}
