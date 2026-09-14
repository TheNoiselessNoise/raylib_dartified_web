import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibVector2Ext get _module => Raylib.instance.module();

/// See [RaylibVector2Ext.Vector2Add].
JSFunction get Vector2Add => _module.Vector2Add;
/// See [RaylibVector2Ext.Vector2AddValue].
JSFunction get Vector2AddValue => _module.Vector2AddValue;
/// See [RaylibVector2Ext.Vector2Angle].
JSFunction get Vector2Angle => _module.Vector2Angle;
/// See [RaylibVector2Ext.Vector2Clamp].
JSFunction get Vector2Clamp => _module.Vector2Clamp;
/// See [RaylibVector2Ext.Vector2ClampValue].
JSFunction get Vector2ClampValue => _module.Vector2ClampValue;
/// See [RaylibVector2Ext.Vector2CrossProduct].
JSFunction get Vector2CrossProduct => _module.Vector2CrossProduct;
/// See [RaylibVector2Ext.Vector2Distance].
JSFunction get Vector2Distance => _module.Vector2Distance;
/// See [RaylibVector2Ext.Vector2DistanceSqr].
JSFunction get Vector2DistanceSqr => _module.Vector2DistanceSqr;
/// See [RaylibVector2Ext.Vector2Divide].
JSFunction get Vector2Divide => _module.Vector2Divide;
/// See [RaylibVector2Ext.Vector2DotProduct].
JSFunction get Vector2DotProduct => _module.Vector2DotProduct;
/// See [RaylibVector2Ext.Vector2Equals].
JSFunction get Vector2Equals => _module.Vector2Equals;
/// See [RaylibVector2Ext.Vector2Invert].
JSFunction get Vector2Invert => _module.Vector2Invert;
/// See [RaylibVector2Ext.Vector2Length].
JSFunction get Vector2Length => _module.Vector2Length;
/// See [RaylibVector2Ext.Vector2LengthSqr].
JSFunction get Vector2LengthSqr => _module.Vector2LengthSqr;
/// See [RaylibVector2Ext.Vector2Lerp].
JSFunction get Vector2Lerp => _module.Vector2Lerp;
/// See [RaylibVector2Ext.Vector2LineAngle].
JSFunction get Vector2LineAngle => _module.Vector2LineAngle;
/// See [RaylibVector2Ext.Vector2Max].
JSFunction get Vector2Max => _module.Vector2Max;
/// See [RaylibVector2Ext.Vector2Min].
JSFunction get Vector2Min => _module.Vector2Min;
/// See [RaylibVector2Ext.Vector2MoveTowards].
JSFunction get Vector2MoveTowards => _module.Vector2MoveTowards;
/// See [RaylibVector2Ext.Vector2Multiply].
JSFunction get Vector2Multiply => _module.Vector2Multiply;
/// See [RaylibVector2Ext.Vector2Negate].
JSFunction get Vector2Negate => _module.Vector2Negate;
/// See [RaylibVector2Ext.Vector2Normalize].
JSFunction get Vector2Normalize => _module.Vector2Normalize;
/// See [RaylibVector2Ext.Vector2One].
JSFunction get Vector2One => _module.Vector2One;
/// See [RaylibVector2Ext.Vector2Reflect].
JSFunction get Vector2Reflect => _module.Vector2Reflect;
/// See [RaylibVector2Ext.Vector2Refract].
JSFunction get Vector2Refract => _module.Vector2Refract;
/// See [RaylibVector2Ext.Vector2Rotate].
JSFunction get Vector2Rotate => _module.Vector2Rotate;
/// See [RaylibVector2Ext.Vector2Scale].
JSFunction get Vector2Scale => _module.Vector2Scale;
/// See [RaylibVector2Ext.Vector2Subtract].
JSFunction get Vector2Subtract => _module.Vector2Subtract;
/// See [RaylibVector2Ext.Vector2SubtractValue].
JSFunction get Vector2SubtractValue => _module.Vector2SubtractValue;
/// See [RaylibVector2Ext.Vector2Transform].
JSFunction get Vector2Transform => _module.Vector2Transform;
/// See [RaylibVector2Ext.Vector2Zero].
JSFunction get Vector2Zero => _module.Vector2Zero;