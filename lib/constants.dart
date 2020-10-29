import 'package:flutter/material.dart';

//app
const app_name = 'LGBT Việt Nam';
const slogan = 'Hãy là chính bản thân mình';

//server
const host = '192.168.10.208';
const port = '6630';

//notify
const no_internet = 'Hãy kiểm tra lại kết nối mạng!';

//regex_value
const reg_email =
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";

//color
const primary_color = Color(0xFF6A5C5B);
const background_color = Color(0xFF000000);
const icon_color = Color(0xFFFFFFFF);
const text_color = Color(0xFFFFFFFF);
const border_color = Color(0xFFFFFFFF);
const border_button_color = Color(0xFFA1A1A1);
const text_hind_color = Color(0xFFB0B3B8);
const text_detail_color = Color(0xFFB0B3A9);
const button_color = Color(0xFF707070);
const background_filter_color = Color(0xFF282C30);
const background_notify = Color(0xFF282C30);

//padding
const padding_value = EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0);

//size
const app_name_font_size = 28.0;
const detail_font_size = 18.0;
const normal_font_size = 15.0;
const small_font_size = 13.0;
const distance_value = 5.0;

//style
const app_name_style = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: app_name_font_size,
  fontFamily: 'UTMGradoo',
  color: text_color,
  decoration: TextDecoration.none,
);

const screen_name_style = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: app_name_font_size,
  fontFamily: 'UTMDuepuntozero',
  color: text_color,
  decoration: TextDecoration.none,
);

const detail_style = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: detail_font_size,
  fontFamily: 'UTMCaviar',
  color: text_detail_color,
  decoration: TextDecoration.none,
);

const text_notify_style = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: small_font_size,
  fontFamily: 'Tahoma',
  color: text_color,
  decoration: TextDecoration.none,
);

const text_normal_style = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: normal_font_size,
  fontFamily: 'Tahoma',
  color: text_color,
  decoration: TextDecoration.none,
);

//validate_warning
const validate_warning_email = 'Thư điện thử không hợp lệ';
const validate_warning_pass = 'Độ dài mật khẩu 6 - 20 ký tự';
const validate_first_name = 'Độ dài từ 4 - 20 ký tự';
const validate_name = 'Độ dài 2 - 10 ký tự';
const validate_gender = 'Bạn chưa chọn giới tính';

//gender
const list_gender = <String>[
  'Đồng tính nữ',
  'Đồng tính nam',
  'Lưỡng tính',
  'Chuyển giới'
];

//Account
const ac_text_email = 'Thư điện tử';
const ac_helper_email = 'VD: dinhvana@gmail.com';
const ac_text_password = 'Mật khẩu';
const ac_text_first_name = 'Họ, tên đệm';
const ac_helper_first_name = 'VD: Nguyễn Văn';
const ac_text_name = 'Tên';
const ac_helper_name = 'VD: Nam';
const ac_text_gender = 'Giới tính';

//Screen_Welcome
//Screen_login
const sc_login_name = 'Đăng Nhập';
const sc_login_detail = 'Thỏa sức khám phá cộng đồng';
const sc_login_text_forgot_password = 'Quên mật khẩu';
const sc_login_button_login = 'Đăng Nhập';
const sc_login_button_registration = 'Đăng Ký';

//Screen_registration
const sc_registration_name = 'Đăng Ký';
const sc_registration_detail = 'Chỉ vài thao tác nhanh thôi';
const sc_registration_button_registration = 'Đăng Ký';
const sc_registration_text_login = 'Về đăng nhập';
