import 'package:calculator_provider/constants/colors.dart';
import 'package:calculator_provider/widgets/button1.dart';
import 'package:flutter/material.dart';

List<Widget> buttonList = [
  //row1
  const Button1(
    label: "C",
    textColor: AppColors.secondaryColor,
  ),
  const Button1(
    label: "/",
    textColor: AppColors.secondaryColor,
  ),
  const Button1(
    label: "X",
    textColor: AppColors.secondaryColor,
  ),
  const Button1(
    label: "AC",
    textColor: AppColors.secondaryColor,
  ),
  //row2
  const Button1(
    label: "7",
  ),
  const Button1(
    label: "8",
  ),
  const Button1(
    label: "9",
  ),
  const Button1(
    label: "-",
    textColor: AppColors.secondaryColor,
  ),
  //row3
  const Button1(
    label: "4",
  ),
  const Button1(
    label: "5",
  ),
  const Button1(
    label: "6",
  ),
  const Button1(
    label: "+",
    textColor: AppColors.secondaryColor,
  ),
  //row 4
  const Button1(
    label: "1",
  ),
  const Button1(
    label: "2",
  ),
  const Button1(
    label: "3",
  ),

  //row5
  const Button1(
    label: "%",
  ),
  const Button1(
    label: "0",
  ),
  const Button1(
    label: ".",
  ),
];
