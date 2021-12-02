import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_starter/widgets/colors/color_style.dart';
import 'package:flutter_starter/app_preference/app_instance.dart';

/// style ///
const appbar_bg = "appbarBg";
const appbar_icon_bg = "appbarIconBg";
const main_tab_Color = "mainTabColor";

const text_color = "textColor";
const sub_text_color = "subTextColor";

const icon_btn_bg = "iconBtnBg";
const icon_btn_icon = "iconBtnIcon";

const blank_card_bg = "blankCardBg";
const blank_card_line = "blankCardLine";

const button_gray_text_color = "buttonGrayTextColor";
const button_gray_bg_color = "buttonGrayBgColor";
const button_outlined_color = "buttonOutlinedColor";
const button_arrow_text_color = "buttonArrowTextColor";
const button_square_bg_color = "buttonSquareBgColor";
const button_square_text_color = "buttonSquareTextColor";
const button_square_outline_color = "buttonSquareOutlineColor";
const button_toggle_inactive_color = "buttonToggleInactiveColor";
const button_icon_color = "buttonIconColor";

const history_table_bg = "historyTableBg";
const history_table_title = "historyTableTitle";
const history_table_text = "historyTableText";
const history_table_divide = "historyTableDivide";

const listView_bg = "listViewBg";
const listView_divide = "listViewDivide";
const listView_date_text = "listViewDateText";
const listView_sub_text = "listViewSubText";
const listView_reorder_icon = "listViewReorderIcon";
const listView_expansion_divide = "listViewExpansionDivide";
const listView_vclist_bg = "listViewVclistBg";
const listView_check_icon_disabled_bg = "listViewCheckIconDisabledBg";
const listView_check_icon_disabled_color = "listViewCheckIconDisabledColor";

const agree_divide_line = "agreeDivideLine";
const text_field_line = "textFieldLine";
const password_input = "passwordInput";
const password_text = "passwordText";
const password_keyboard_text = "passwordKeyboardText";

const krw_text = "krwText";
const exchange_text = "exchangeText";
const transaction_title = "transactionTitle";
const transaction_box = "transactionBox";
const transaction_text = "transactionText";
const transaction_divide = "transactionDivide";
const transaction_detail = "transactionDetail";
const wallet_text_field = "walletTextField";
const wallet_info_icon = "walletInfoIcon";

const dialog_text = "dialogTextColor";
const dialog_bg_color = "dialogBgColor";
const dialog_btn_active_color = "dialogBtnActiveColor";
const dialog_btn_active_text = "dialogBtnActiveText";
const dialog_btn_text = "dialogBtnText";
const dialog_sub_box = "dialogSubBox";
const dialog_sub_text = "dialogSubText";
const warning_box = "warningBox";

class Themes {
  static colors() {
    bool bDarkTheme = AppInstance().isDarkTheme() ?? true;

    return (!bDarkTheme)? {
      appbar_bg : Colors.white,
      appbar_icon_bg : ColorStyles.neonBlue60,
      main_tab_Color : ColorStyles.baseLineGray90,
      text_color : ColorStyles.baseLineGray100,
      sub_text_color :  Color.fromRGBO(142, 142, 142, 1),
      icon_btn_bg : ColorStyles.neonBlue10,
      icon_btn_icon : ColorStyles.neonBlue60,
      blank_card_bg : Colors.white,
      blank_card_line : ColorStyles.baseLineGray40,
      history_table_bg: ColorStyles.baseLineGray5,
      history_table_title: Color.fromRGBO(74, 74, 74, 1),
      history_table_text: Color.fromRGBO(74, 74, 74, 1),
      history_table_divide: ColorStyles.baseLineGray10,
      listView_bg: ColorStyles.baseLineGray5,
      listView_divide: ColorStyles.baseLineGray10,
      listView_date_text: ColorStyles.baseLineGray50,
      listView_sub_text: ColorStyles.baseLineGray50,
      listView_reorder_icon: ColorStyles.baseLineGray60,
      listView_expansion_divide: ColorStyles.baseLineGray10,
      listView_vclist_bg: ColorStyles.baseLineGray5,
      listView_check_icon_disabled_bg:ColorStyles.baseLineGray20,
      listView_check_icon_disabled_color:ColorStyles.baseLineGray5,
      agree_divide_line: ColorStyles.baseLineGray10,
      text_field_line: ColorStyles.baseLineGray30,
      password_input: ColorStyles.baseLineGray50,
      password_text: ColorStyles.baseLineGray60,
      password_keyboard_text: ColorStyles.baseLineGray80,
      krw_text : ColorStyles.baseLineGray90,
      exchange_text: ColorStyles.neonBlue50,
      transaction_title : ColorStyles.neonBlue60,
      transaction_box : ColorStyles.baseLineGray5,
      transaction_text: ColorStyles.baseLineGray70,
      transaction_divide: ColorStyles.baseLineGray50,
      transaction_detail: ColorStyles.baseLineGray70,
      wallet_text_field: ColorStyles.baseLineGray5,
      wallet_info_icon: ColorStyles.baseLineGray70,
      dialog_sub_box: ColorStyles.baseLineGray10,
      dialog_sub_text: ColorStyles.baseLineGray50,
      warning_box : ColorStyles.baseLineGray5,
    } : {
      appbar_bg : ColorStyles.darkBackground,
      appbar_icon_bg : Color.fromRGBO(255, 255, 255, 0.3),
      main_tab_Color : Colors.white,
      text_color : Colors.white,
      sub_text_color : ColorStyles.baseLineGray30,
      icon_btn_bg : ColorStyles.neonBlue60,
      icon_btn_icon : Colors.white,
      blank_card_bg : ColorStyles.darkPurple,
      blank_card_line : Colors.white,
      history_table_bg: ColorStyles.darkPurple,
      history_table_title: Colors.white,
      history_table_text: ColorStyles.baseLineGray30,
      history_table_divide: ColorStyles.baseLineGray70,
      listView_bg: ColorStyles.darkPurple,
      listView_divide: ColorStyles.baseLineGray90,
      listView_date_text: ColorStyles.baseLineGray30,
      listView_sub_text: ColorStyles.baseLineGray20,
      listView_reorder_icon: Colors.white,
      listView_expansion_divide : ColorStyles.baseLineGray80,
      listView_vclist_bg: ColorStyles.midBlack,
      listView_check_icon_disabled_bg:ColorStyles.baseLineGray50,
      listView_check_icon_disabled_color:ColorStyles.baseLineGray30,
      agree_divide_line: ColorStyles.baseLineGray80,
      text_field_line: ColorStyles.baseLineGray40,
      password_input: ColorStyles.baseLineGray30,
      password_text: ColorStyles.baseLineGray30,
      password_keyboard_text: Colors.white,
      krw_text : Colors.white,
      exchange_text: ColorStyles.neonBlue10,
      transaction_title : Colors.white,
      transaction_box : ColorStyles.lightBlack,
      transaction_text: Colors.white,
      transaction_divide: Colors.white,
      transaction_detail: ColorStyles.baseLineGray30,
      wallet_text_field: ColorStyles.midBlack,
      wallet_info_icon: Colors.white,
      dialog_sub_box: ColorStyles.midBlack,
      dialog_sub_text: ColorStyles.lightPurple,
      warning_box : ColorStyles.midBlack,
    };
  }

  static buttons() {
    bool bDarkTheme = AppInstance().isDarkTheme() ?? true;

    return (!bDarkTheme)? {
      button_gray_text_color : Colors.white,
      button_gray_bg_color : ColorStyles.baseLineGray20,
      button_outlined_color : ColorStyles.neonBlue60,
      button_arrow_text_color : ColorStyles.neonBlue60,
      button_square_bg_color : ColorStyles.baseLineGray90,
      button_square_text_color : Colors.white,
      button_square_outline_color : ColorStyles.baseLineGray50,
      button_toggle_inactive_color : ColorStyles.baseLineGray20,
      button_icon_color : ColorStyles.neonBlue40,
    } : {
      button_gray_text_color : ColorStyles.baseLineGray30,
      button_gray_bg_color : ColorStyles.baseLineGray50,
      button_outlined_color : Colors.white,
      button_arrow_text_color : ColorStyles.neonBlue5,
      button_square_bg_color: Colors.white,
      button_square_text_color : ColorStyles.baseLineGray90,
      button_square_outline_color : ColorStyles.baseLineGray20,
      button_toggle_inactive_color : ColorStyles.baseLineGray70,
      button_icon_color : ColorStyles.neonBlue10,
    };
  }

  static dialogs() {
    bool bDarkTheme = AppInstance().isDarkTheme() ?? true;

    return (!bDarkTheme)? {
      dialog_text : ColorStyles.baseLineGray90,
      dialog_bg_color : Colors.white,
      dialog_btn_active_color : ColorStyles.neonBlue5,
      dialog_btn_active_text : ColorStyles.neonBlue60,
      dialog_btn_text : ColorStyles.baseLineGray70,
    } : {
      dialog_text : Colors.white,
      dialog_bg_color : ColorStyles.darkPurple,
      dialog_btn_active_color :  ColorStyles.lightBlack,
      dialog_btn_active_text : Colors.white,
      dialog_btn_text : Colors.white,
    };
  }

  static ThemeData currentTheme() {
    bool bDarkTheme = AppInstance().isDarkTheme() ?? true;

    return !bDarkTheme? ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData( color: ColorStyles.baseLineGray100 ),
        color: ColorStyles.baseLineGray100,
        textTheme: TextTheme( bodyText1: TextStyle( color: ColorStyles.baseLineGray100 )),
        titleTextStyle: TextStyle( color: ColorStyles.baseLineGray100 ),
      ),
      primaryIconTheme: IconThemeData( color: ColorStyles.baseLineGray100),
      primaryTextTheme: TextTheme(
        headline6: TextStyle( color: ColorStyles.baseLineGray100 ),
        bodyText1 : TextStyle( color: ColorStyles.baseLineGray100 ),
      ),
    ) : ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: ColorStyles.darkBackground,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData( color: Colors.white ),
        color: Colors.white,
        textTheme: TextTheme( bodyText1: TextStyle( color: Colors.white )),
        titleTextStyle: TextStyle( color: Colors.white ),
      ),
      primaryIconTheme: IconThemeData( color: Colors.white),
      primaryTextTheme: TextTheme(
        headline6: TextStyle( color: Colors.white ),
        bodyText1 : TextStyle( color: Colors.white ),
      ),
    );
  }

  static bgImage() {
    bool bDarkTheme = AppInstance().isDarkTheme() ?? true;

    return (!bDarkTheme)? AssetImage('assets/images/walletBackLogoLight.png')
        : AssetImage('assets/images/walletBackLogoDark.png');
  }

  static dialogsImage() {
    bool bDarkTheme = AppInstance().isDarkTheme() ?? true;

    return (!bDarkTheme)? SvgPicture.asset('assets/svgs/dialogTitleLight.svg', width: 100, height:14, fit: BoxFit.contain)
        : SvgPicture.asset('assets/svgs/dialogTitleDark.svg', width: 100, height:14, fit: BoxFit.contain);
  }

  static transactionImage() {
    bool bDarkTheme = AppInstance().isDarkTheme() ?? true;

    return (!bDarkTheme)? Image.asset('assets/images/logoSymbolBlue.png', width: 197, height: 248,)
        : Image.asset('assets/images/logoSymbolWhite.png', width: 197, height: 248,);
  }
}

