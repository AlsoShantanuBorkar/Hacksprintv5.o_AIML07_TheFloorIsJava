import 'package:flutter/material.dart';

const SizedBox verSpacing_2 = SizedBox(height: 2);
const SizedBox verSpacing_4 = SizedBox(height: 4);
const SizedBox verSpacing_8 = SizedBox(height: 8);
const SizedBox verSpacing_16 = SizedBox(height: 16);
const SizedBox verSpacing_24 = SizedBox(height: 24);
const SizedBox verSpacing_32 = SizedBox(height: 32);
const SizedBox verSpacing_40 = SizedBox(height: 40);
const SizedBox verSpacing_48 = SizedBox(height: 48);
const SizedBox verSpacing_56 = SizedBox(height: 56);

const SizedBox horSpacing_2 = SizedBox(width: 2);
const SizedBox horSpacing_4 = SizedBox(width: 4);
const SizedBox horSpacing_8 = SizedBox(width: 8);
const SizedBox horSpacing_16 = SizedBox(width: 16);
const SizedBox horSpacing_24 = SizedBox(width: 24);
const SizedBox horSpacing_32 = SizedBox(width: 32);
const SizedBox horSpacing_40 = SizedBox(width: 40);
const SizedBox horSpacing_48 = SizedBox(width: 48);
const SizedBox horSpacing_56 = SizedBox(width: 56);

extension on int {
  EdgeInsets padding(context) => EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.3,
        left: MediaQuery.of(context).size.width * 0.09,
        bottom: MediaQuery.of(context).size.height * 0.06,
      );
  EdgeInsets margin(context) => EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.3,
        left: MediaQuery.of(context).size.width * 0.09,
        bottom: MediaQuery.of(context).size.height * 0.06,
      );
}
