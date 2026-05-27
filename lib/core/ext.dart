part of 'raylib_dartified_web.dart';

class DoNotValidate {
  final String reason;
  const DoNotValidate([this.reason = '']);
}

mixin FEnum on Enum {
  int get value;

  bool lt(FEnum o) => value < o.value;
  bool lte(FEnum o) => value <= o.value;
  bool gt(FEnum o) => value > o.value;
  bool gte(FEnum o) => value >= o.value;
  bool eq(FEnum o) => value == o.value;
  bool neq(FEnum o) => value != o.value;
}

extension CharCodeString on String {
  int get ch => isEmpty ? 0 : codeUnitAt(0);
}

extension IterableIntEx on Iterable<int> {
  String toDartString() => .fromCharCodes(takeWhile((c) => c != 0));
}

extension IntHex on int {
  String get hex => toRadixString(16);
  String hexPad([int width = 2]) => hex.padLeft(width, '0');
  String pad([int width = 2, String ch = '0']) => toString().padLeft(width, ch);
}

extension BoolAsInt on bool {
  int toInt() => this ? 1 : 0;
  
  int operator +(int other) => toInt() + other;
  int operator -(int other) => toInt() - other;
  int operator *(int other) => toInt() * other;
  double operator /(int other) => toInt() / other;
  
  bool operator <(int other) => toInt() < other;
  bool operator >(int other) => toInt() > other;
  bool operator <=(int other) => toInt() <= other;
  bool operator >=(int other) => toInt() >= other;
}

extension IntAsBool on int {
  bool toBool() => this != 0;
}