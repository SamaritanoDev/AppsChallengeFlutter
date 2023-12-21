import 'package:flutter/material.dart';
import 'package:pagebreakfast/constants/colors.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.apple, color: brown),
          _ContendNavbar(),
          SizedBox(),
        ],
      ),
    );
  }
}

class _ContendNavbar extends StatelessWidget {
  const _ContendNavbar();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Home',
            style: textTheme.bodyLarge?.copyWith(color: brown),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Catalog',
            style: textTheme.bodyLarge?.copyWith(color: brown),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'About',
            style: textTheme.bodyLarge?.copyWith(color: brown),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Contact',
            style: textTheme.bodyLarge?.copyWith(color: brown),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Gallery',
            style: textTheme.bodyLarge?.copyWith(color: brown),
          ),
        ),
      ],
    );
  }
}
