<?php

return [
    'tb_composition' => 'Ngôn ngữ',
    'tb_properties' => 'Thuộc tính',
    'tb_seo' => 'SEO',
    'tb_seo_title' => 'Tiêu đề SEO',
    'tb_seo_description' => 'Mô tả SEO',
    'tb_seo_description_notfound' => 'Không có mô tả nào được thêm trước đó.',
    'tb_seo_link' => 'URL Link',
    'tb_seo_keywords' => 'Từ khóa',
    'tb_seo_keywords_notfound' => 'Không tìm thấy từ khóa của bạn. Bạn nên thêm từ khóa vào nội dung trang.',
    'tb_seo_warning' => 'Một vài từ khóa của bạn không tìm thấy trong nội dung, bạn nên thay đổi nội dung thêm đầy đủ các từ khóa.',
    'tb_edit_alt' => 'Chỉnh sữa trang này trên giao diện quản lý',
    'tb_visible_not_alt' => 'Trang này hiện chưa sẵn sàng để truy cập',
    'tb_visible_alt' => 'Trang này KHÔNG cho phép người dùng truy cập',
    'block_html_html_label' => 'HTML code',
    'block_html_no_content' => 'Chưa có code HTML thêm trước đó.',
    'block_module_name' => 'Module',
    'block_module_modulename_label' => 'Module name',
    'block_module_modulecontroller_label' => 'Controller Name (without controller suffix)',
    'block_module_moduleaction_label' => 'Action Name (without action prefix)',
    'block_module_moduleactionargs_label' => 'Action Arguments (json: {"var":"value"})',
    'block_module_no_module' => 'No module has been specified yet.',
    'block_module_integration' => 'Module integration',
    'block_html_name' => 'HTML',
    'block_module_modulename_help' => 'Chỉ có frontend module mởi có thể đăng ký vào listed.',
    'block_group_dev_elements' => 'Phát triển',
    'block_group_layout_elements' => 'Layout',
    'block_group_basic_elements' => 'Cơ bản',
    'block_group_project_elements' => 'Dự án',
    'block_group_text_elements' => 'Nội dung',
    'block_group_media_group' => 'Media',

    // 1.0.0
    'block_module_strictrender' => 'Strict Render',
    'block_module_strictrender_help' => 'When strict render is enabled, the module will only run the provided route (module, controller, action, params) without listening to action and controller routes.',
    'block_html_cfg_raw_label' => 'Render HTML in Admin',

    // 3.4.0
    'tag_alias_readme' => 'The alias tag allows you to use aliases defined in your application as well as predefined aliases. As an example, you can use `alias[@web]` to link to images in the public html folder: `<img src="alias[@web]/image.jpg">`',
    'tag_menu_readme' => 'Generate a link to a menu item where the key is the page id (you can see the page ids when hovering over the site navigation in the administration).',
    'tag_page_readme' => 'Get the content of a full page or of a placeholder of a page. The first parameter is the page id (which you get by hovering over the site navigation in the administration): `page[1]`. If you only want to get the content of a placeholder of the cmslayout, use the second parameter: `page[1](placeholderName)`.',
    'block_mirror_language_name' => 'Mirror Language',
    'block_mirror_config_language_label' => 'Source Language',
    'block_mirror_admin_empty_language' => 'Configure a <b><span class="material-icons">edit</span> source language</b> to mirror its content for the current placeholder.',
    'block_mirror_admin_configured_language' => 'Mirroring this placeholder from <span class="material-icons">arrow_right_alt</span> <b>{name}</b>.',
];