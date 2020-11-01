# APP LGBT Việt Nam

### Làm thế nào để chạy
    - Điều chỉnh config_local.dark cho phù hợp với server.
    - Dùng AVD Manage để tạo máy ảo, hoặc dùng máy thật để run.

### Cấu trúc thư mục
    - config: Chứa config của hệ thống
    - assets: Chứa tài nguyên dùng chung của hệ thống images, fonts...
    - pubspec.yaml: Chứa các package cần intall dark
    - lib/Screens: Chứa danh sách các màn hình
        + components: Thành phần con của 1 màn hình
        + tenmanhinh_screen: Bao bọc 1 màn hình
    - lib/Widgets: Chứa các Widgets dùng chung có thể tái sử dụng lại của hệ thống
    - lib/constants.dark: Chứa tất cả các hằng số dùng chung của toàn hệ thống
    - lib/helper.dark: Chứa các hàm dùng chung của toàn hệ thống
    - lib/main.dark: main của chương trình


created_at: 27/10/20 thinhdev
update_at: 01/11/20 thinhdev