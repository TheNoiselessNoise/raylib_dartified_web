import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibVector4Ext get _module => Raylib.instance.module();

/// See [RaylibVector4Ext.Vector4Add].
JSFunction get Vector4Add => _module.Vector4Add;
/// See [RaylibVector4Ext.Vector4AddValue].
JSFunction get Vector4AddValue => _module.Vector4AddValue;
/// See [RaylibVector4Ext.Vector4Distance].
JSFunction get Vector4Distance => _module.Vector4Distance;
/// See [RaylibVector4Ext.Vector4DistanceSqr].
JSFunction get Vector4DistanceSqr => _module.Vector4DistanceSqr;
/// See [RaylibVector4Ext.Vector4Divide].
JSFunction get Vector4Divide => _module.Vector4Divide;
/// See [RaylibVector4Ext.Vector4DotProduct].
JSFunction get Vector4DotProduct => _module.Vector4DotProduct;
/// See [RaylibVector4Ext.Vector4Equals].
JSFunction get Vector4Equals => _module.Vector4Equals;
/// See [RaylibVector4Ext.Vector4Invert].
JSFunction get Vector4Invert => _module.Vector4Invert;
/// See [RaylibVector4Ext.Vector4Length].
JSFunction get Vector4Length => _module.Vector4Length;
/// See [RaylibVector4Ext.Vector4LengthSqr].
JSFunction get Vector4LengthSqr => _module.Vector4LengthSqr;
/// See [RaylibVector4Ext.Vector4Lerp].
JSFunction get Vector4Lerp => _module.Vector4Lerp;
/// See [RaylibVector4Ext.Vector4Max].
JSFunction get Vector4Max => _module.Vector4Max;
/// See [RaylibVector4Ext.Vector4Min].
JSFunction get Vector4Min => _module.Vector4Min;
/// See [RaylibVector4Ext.Vector4MoveTowards].
JSFunction get Vector4MoveTowards => _module.Vector4MoveTowards;
/// See [RaylibVector4Ext.Vector4Multiply].
JSFunction get Vector4Multiply => _module.Vector4Multiply;
/// See [RaylibVector4Ext.Vector4Negate].
JSFunction get Vector4Negate => _module.Vector4Negate;
/// See [RaylibVector4Ext.Vector4Normalize].
JSFunction get Vector4Normalize => _module.Vector4Normalize;
/// See [RaylibVector4Ext.Vector4One].
JSFunction get Vector4One => _module.Vector4One;
/// See [RaylibVector4Ext.Vector4Scale].
JSFunction get Vector4Scale => _module.Vector4Scale;
/// See [RaylibVector4Ext.Vector4Subtract].
JSFunction get Vector4Subtract => _module.Vector4Subtract;
/// See [RaylibVector4Ext.Vector4SubtractValue].
JSFunction get Vector4SubtractValue => _module.Vector4SubtractValue;
/// See [RaylibVector4Ext.Vector4Zero].
JSFunction get Vector4Zero => _module.Vector4Zero;