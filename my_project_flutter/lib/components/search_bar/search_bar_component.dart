import 'package:flutter/material.dart';

import 'search_bar_viewmodel.dart';

class SearchBarComponent extends StatefulWidget {
  final SearchBarViewModel viewModel;

  const SearchBarComponent({
    super.key,
    required this.viewModel,
  });

  @override
  State<SearchBarComponent> createState() {
    return _SearchBarComponentState();
  }
}

class _SearchBarComponentState extends State<SearchBarComponent> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(
      text: widget.viewModel.initialText,
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool disabled =
        widget.viewModel.type == SearchBarType.disabled;

    return TextField(
      controller: _controller,
      enabled: !disabled,
      onTap: widget.viewModel.onTap,
      onChanged: widget.viewModel.onChanged,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color(0xFF0F172A),
      ),
      decoration: InputDecoration(
        hintText: widget.viewModel.hintText,

        hintStyle: TextStyle(
          fontSize: 15,
          color: disabled
              ? const Color(0xFFCBD5E1)
              : const Color(0xFF9CA3AF),
        ),

        prefixIcon: Icon(
          Icons.search,
          size: 22,
          color: _getIconColor(),
        ),

        suffixIcon: _controller.text.isNotEmpty && !disabled
            ? IconButton(
          onPressed: () {
            setState(() {
              _controller.clear();
            });
          },
          icon: const Icon(
            Icons.close,
            size: 20,
          ),
        )
            : null,

        filled: true,
        fillColor: _getBackgroundColor(),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: _getBorderColor(),
            width: 1,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Color(0xFF2563EB),
            width: 1.5,
          ),
        ),

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Color(0xFFE2E8F0),
            width: 1,
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor() {
    switch (widget.viewModel.type) {
      case SearchBarType.standard:
        return Colors.white;

      case SearchBarType.active:
        return Colors.white;

      case SearchBarType.filled:
        return const Color(0xFFF1F5F9);

      case SearchBarType.disabled:
        return const Color(0xFFF8FAFC);
    }
  }

  Color _getBorderColor() {
    switch (widget.viewModel.type) {
      case SearchBarType.standard:
        return const Color(0xFFE2E8F0);

      case SearchBarType.active:
        return const Color(0xFF2563EB);

      case SearchBarType.filled:
        return const Color(0xFFF1F5F9);

      case SearchBarType.disabled:
        return const Color(0xFFE2E8F0);
    }
  }

  Color _getIconColor() {
    switch (widget.viewModel.type) {
      case SearchBarType.standard:
        return const Color(0xFF9CA3AF);

      case SearchBarType.active:
        return const Color(0xFF2563EB);

      case SearchBarType.filled:
        return const Color(0xFF64748B);

      case SearchBarType.disabled:
        return const Color(0xFFCBD5E1);
    }
  }
}