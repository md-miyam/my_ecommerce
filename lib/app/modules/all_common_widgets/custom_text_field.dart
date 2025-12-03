import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  // Core
  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final bool enabled;
  final bool readOnly;
  final bool obscureText;
  final int? maxLength;
  final int maxLines;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;

  // Labels & hints
  final String? labelText;
  final String? hintText;
  final String? helperText;

  // Icons & adornments
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? prefixText;
  final String? suffixText;

  // Validation & events
  final FormFieldValidator<String>? validator;
  final AutovalidateMode autovalidateMode;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;

  // Styling
  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextStyle? helperStyle;
  final TextStyle? errorStyle;

  // Colors and borders
  final Color? fillColor;
  final bool filled;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? errorBorderColor;
  final Color? validBorderColor;

  // Validation UI
  final bool showValidationIcon;
  final Color? validIconColor;
  final Color? errorIconColor;

  // Padding & layout
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;

  const CustomTextField({
    Key? key,
    // Core
    this.controller,
    this.initialValue,
    this.focusNode,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.inputFormatters,

    // Labels & hints
    this.labelText,
    this.hintText,
    this.helperText,

    // Icons & adornments
    this.prefixIcon,
    this.suffixIcon,
    this.prefixText,
    this.suffixText,

    // Validation & events
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onChanged,
    this.onSaved,
    this.onFieldSubmitted,

    // Styling
    this.style,
    this.labelStyle,
    this.hintStyle,
    this.helperStyle,
    this.errorStyle,

    // Colors and borders
    this.fillColor,
    this.filled = false,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.validBorderColor,

    // Validation UI
    this.showValidationIcon = true,
    this.validIconColor,
    this.errorIconColor,

    // Padding & layout
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController(text: widget.initialValue);
    _focusNode = widget.focusNode ?? FocusNode();
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    if (widget.focusNode == null) _focusNode.dispose();
    super.dispose();
  }

  bool get _hasText => _controller.text.isNotEmpty;

  bool get _isValid {
    if (widget.validator == null) return true;
    return widget.validator!(_controller.text) == null;
  }

  InputBorder _buildOutline(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 1.5),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseEnabledColor = widget.enabledBorderColor ?? theme.inputDecorationTheme.enabledBorder?.borderSide.color ?? Colors.grey.shade400;
    final baseFocusedColor = widget.focusedBorderColor ?? theme.colorScheme.primary;
    final baseErrorColor   = widget.errorBorderColor   ?? theme.colorScheme.error;
    final baseValidColor   = widget.validBorderColor   ?? Colors.green;

    final isFocused = _focusNode.hasFocus;
    final showValidStyle = widget.showValidationIcon && _hasText && _isValid && isFocused;

    final effectiveEnabledBorder = widget.enabledBorder ?? _buildOutline(baseEnabledColor);
    final effectiveFocusedBorder = widget.focusedBorder ?? _buildOutline(showValidStyle ? baseValidColor : baseFocusedColor);
    final effectiveErrorBorder   = widget.errorBorder   ?? _buildOutline(baseErrorColor);

    final effectiveSuffixIcon = widget.showValidationIcon && _hasText
        ? (_isValid
        ? Icon(Icons.check_circle, color: widget.validIconColor ?? Colors.green)
        : Icon(Icons.warning, color: widget.errorIconColor ?? baseErrorColor))
        : widget.suffixIcon;

    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      obscureText: widget.obscureText,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      inputFormatters: widget.inputFormatters,
      style: widget.style,
      autovalidateMode: widget.autovalidateMode,
      validator: widget.validator,
      onChanged: (v) {
        widget.onChanged?.call(v);
        // Trigger a rebuild for dynamic icons/borders
        setState(() {});
      },
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: widget.labelStyle,
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        helperText: widget.helperText,
        helperStyle: widget.helperStyle,
        errorStyle: widget.errorStyle,
        prefixIcon: widget.prefixIcon,
        suffixIcon: effectiveSuffixIcon,
        prefixText: widget.prefixText,
        suffixText: widget.suffixText,
        filled: widget.filled,
        fillColor: widget.fillColor ?? (widget.filled ? Colors.grey.shade50 : null),
        contentPadding: widget.contentPadding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        enabledBorder: effectiveEnabledBorder,
        focusedBorder: effectiveFocusedBorder,
        errorBorder: effectiveErrorBorder,
        focusedErrorBorder: effectiveErrorBorder,
        // Optional: subtle background change on focus for better UX
      ),
    );
  }
}
