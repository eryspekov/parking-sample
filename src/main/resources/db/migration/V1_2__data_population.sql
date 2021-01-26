INSERT INTO enm_trade_offer_type (id, name) VALUES (1, 'Покупка');
INSERT INTO enm_trade_offer_type (id, name) VALUES (2, 'Продажа');

INSERT INTO enm_goods_category_group (id, name) VALUES (1, 'Продукты');
INSERT INTO enm_goods_category_group (id, name) VALUES (2, 'Авто');
INSERT INTO enm_goods_category_group (id, name) VALUES (3, 'Недвижимость');
INSERT INTO enm_goods_category_group (id, name) VALUES (4, 'Еда');
INSERT INTO enm_goods_category_group (id, name) VALUES (5, 'Техника');
INSERT INTO enm_goods_category_group (id, name) VALUES (6, 'Одежда');

INSERT INTO enm_property_type (id, name, label) VALUES (1, 'numeric', 'Число');
INSERT INTO enm_property_type (id, name, label) VALUES (2, 'string', 'Строка');
INSERT INTO enm_property_type (id, name, label) VALUES (3, 'date', 'Дата');
INSERT INTO enm_property_type (id, name, label) VALUES (4, 'boolean', 'Булево');
INSERT INTO enm_property_type (id, name, label) VALUES (5, 'list', 'СписокЗначений');
INSERT INTO enm_property_type (id, name, label) VALUES (6, 'goods', 'Продукт');
INSERT INTO enm_property_type (id, name, label) VALUES (9, 'productionCountry', 'Страна происхождения');
INSERT INTO enm_property_type (id, name, label) VALUES (7, 'goodsCategory', 'Категория');
INSERT INTO enm_property_type (id, name, label) VALUES (8, 'tradeMark', 'Бренд');

INSERT INTO enm_filter_type (id, name, type_id, order_num) VALUES (1, 'goods', 6, 1);
INSERT INTO enm_filter_type (id, name, type_id, order_num) VALUES (2, 'goodsCategory', 7, 2);
INSERT INTO enm_filter_type (id, name, type_id, order_num) VALUES (3, 'tradeMark', 8, 3);

INSERT INTO enm_property_section (id, name, order_num) VALUES (1, 'Основные параметры', 1);
INSERT INTO enm_property_section (id, name, order_num) VALUES (2, 'Дополнительные параметры', 2);

INSERT INTO ref_filter_key (id, type_id, key_id, key_int, key_string) VALUES (1, 1, 2, 55165165, 'Картофель');

INSERT INTO ref_unit_classification (id, changed_at, changed_by, created_at, created_by, name, full_name, code) VALUES (1, NULL, NULL, NULL, NULL, 'шт', NULL, '443');

INSERT INTO ref_trade_mark (id, changed_at, changed_by, created_at, created_by, name, country_classification_id, web_page, "desc", image_name) VALUES (1, NULL, NULL, NULL, NULL, 'J7', NULL, NULL, NULL, NULL);

INSERT INTO ref_goods_group (id, changed_at, changed_by, created_at, created_by, parent, name, full_name, article) VALUES (1, NULL, NULL, NULL, NULL, NULL, 'Фууд', NULL, '00000015');
INSERT INTO ref_goods_group (id, changed_at, changed_by, created_at, created_by, parent, name, full_name, article) VALUES (2, NULL, NULL, NULL, NULL, 1, 'Напитки', NULL, '00000016');
INSERT INTO ref_goods_group (id, changed_at, changed_by, created_at, created_by, parent, name, full_name, article) VALUES (3, NULL, NULL, NULL, NULL, 1, 'Овощи', NULL, '00000017');
INSERT INTO ref_goods_group (id, changed_at, changed_by, created_at, created_by, parent, name, full_name, article) VALUES (4, NULL, NULL, NULL, NULL, 1, 'Фрукты', NULL, '00000018');

INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (1, NULL, NULL, NULL, NULL, 'Овощи', 1, NULL, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (2, NULL, NULL, NULL, NULL, 'Картофель', 1, 1, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (3, NULL, NULL, NULL, NULL, 'Морковь', 1, 1, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (4, NULL, NULL, NULL, NULL, 'Яблоко', 1, 1, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (5, NULL, NULL, NULL, NULL, 'Томат', NULL, NULL, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (6, NULL, NULL, NULL, NULL, 'Безалкогольные напитки', 1, NULL, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (7, NULL, NULL, NULL, NULL, 'Сок', 1, 6, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (8, NULL, NULL, NULL, NULL, 'Чай, кофе, какао', 1, NULL, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (9, NULL, NULL, NULL, NULL, 'Чай', NULL, 8, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (10, NULL, NULL, NULL, NULL, 'Фрукты', 1, NULL, NULL);
INSERT INTO ref_goods_category (id, changed_at, changed_by, created_at, created_by, name, group_id, parent, image_name) VALUES (11, NULL, NULL, NULL, NULL, 'Абрикос', 1, 10, NULL);

INSERT INTO ref_goods (id, changed_at, changed_by, created_at, created_by, group_id, name, article, barcode, full_name, type, unit_id, unit_classification_id, trade_mark_id, country_classification_id, fea_id, width, height, depth, count_in_height, quantum, category_id, image_name) VALUES (1, NULL, NULL, NULL, NULL, 3, 'Картофель молодой', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO ref_goods (id, changed_at, changed_by, created_at, created_by, group_id, name, article, barcode, full_name, type, unit_id, unit_classification_id, trade_mark_id, country_classification_id, fea_id, width, height, depth, count_in_height, quantum, category_id, image_name) VALUES (5, NULL, NULL, NULL, NULL, 3, 'Помидоры', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO ref_goods (id, changed_at, changed_by, created_at, created_by, group_id, name, article, barcode, full_name, type, unit_id, unit_classification_id, trade_mark_id, country_classification_id, fea_id, width, height, depth, count_in_height, quantum, category_id, image_name) VALUES (2, NULL, NULL, NULL, NULL, 2, 'Сок', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO ref_goods (id, changed_at, changed_by, created_at, created_by, group_id, name, article, barcode, full_name, type, unit_id, unit_classification_id, trade_mark_id, country_classification_id, fea_id, width, height, depth, count_in_height, quantum, category_id, image_name) VALUES (6, NULL, NULL, NULL, NULL, 2, 'Чай холодный Lipton зеленый', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO ref_goods (id, changed_at, changed_by, created_at, created_by, group_id, name, article, barcode, full_name, type, unit_id, unit_classification_id, trade_mark_id, country_classification_id, fea_id, width, height, depth, count_in_height, quantum, category_id, image_name) VALUES (7, NULL, NULL, NULL, NULL, 2, 'Сок J7 Персик', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO ref_goods (id, changed_at, changed_by, created_at, created_by, group_id, name, article, barcode, full_name, type, unit_id, unit_classification_id, trade_mark_id, country_classification_id, fea_id, width, height, depth, count_in_height, quantum, category_id, image_name) VALUES (8, NULL, NULL, NULL, NULL, 4, 'Абрикос', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL);

INSERT INTO ref_goods_package (id, changed_at, changed_by, created_at, created_by, name, goods_id) VALUES (1, NULL, NULL, NULL, NULL, 'Мешок', 1);
INSERT INTO ref_goods_package (id, changed_at, changed_by, created_at, created_by, name, goods_id) VALUES (2, NULL, NULL, NULL, NULL, 'Сетка', 1);

INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (1, NULL, NULL, NULL, NULL, 'Сорт картофеля', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (2, NULL, NULL, NULL, NULL, 'Тип овоща', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (3, NULL, NULL, NULL, NULL, 'Чистота овоща', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (5, NULL, NULL, NULL, NULL, 'Размер картофеля', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (7, NULL, NULL, NULL, NULL, 'Способ выращивания', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (8, NULL, NULL, NULL, NULL, 'Цвет картофеля', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (9, NULL, NULL, NULL, NULL, 'Строчное свойство', 2);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (10, NULL, NULL, NULL, NULL, 'Числовое свойство', 1);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (11, NULL, NULL, NULL, NULL, 'Свойство для даты', 3);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (12, NULL, NULL, NULL, NULL, 'Булево свойство', 4);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (13, NULL, NULL, NULL, NULL, 'Размер томатов', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (14, NULL, NULL, NULL, NULL, 'Наличие упаковки', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (15, NULL, NULL, NULL, NULL, 'Сорт томатов', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (16, NULL, NULL, NULL, NULL, 'Способ выращивания', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (17, NULL, NULL, NULL, NULL, 'Тип томатов', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (19, NULL, NULL, NULL, NULL, 'Форма томатов', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (20, NULL, NULL, NULL, NULL, 'Цвет томатов', 5);
INSERT INTO ref_property (id, changed_at, changed_by, created_at, created_by, name, type_id) VALUES (22, NULL, NULL, NULL, NULL, 'Год урожая', 5);

INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (1, NULL, NULL, NULL, NULL, 'Гала', 1);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (2, NULL, NULL, NULL, NULL, 'Ранний', 1);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (4, NULL, NULL, NULL, NULL, 'Ред Скарлет', 1);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (5, NULL, NULL, NULL, NULL, 'Молодой', 2);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (6, NULL, NULL, NULL, NULL, 'Раннеспелый', 2);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (7, NULL, NULL, NULL, NULL, 'Новый урожай', 2);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (8, NULL, NULL, NULL, NULL, 'Среднеспелый', 2);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (9, NULL, NULL, NULL, NULL, 'Позднеспелый', 2);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (10, NULL, NULL, NULL, NULL, 'Мытый', 3);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (11, NULL, NULL, NULL, NULL, 'Немытый', 3);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (12, NULL, NULL, NULL, NULL, 'Очищенный', 3);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (13, NULL, NULL, NULL, NULL, 'Крупный', 5);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (14, NULL, NULL, NULL, NULL, 'Стандарт', 5);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (15, NULL, NULL, NULL, NULL, 'Мелкий', 5);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (16, NULL, NULL, NULL, NULL, 'Отборный', 5);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (17, NULL, NULL, NULL, NULL, 'Тепличный', 7);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (18, NULL, NULL, NULL, NULL, 'Грунтовой', 7);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (20, NULL, NULL, NULL, NULL, 'В домашних условиях', 7);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (21, NULL, NULL, NULL, NULL, 'В диких условиях', 7);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (22, NULL, NULL, NULL, NULL, 'Белый', 8);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (23, NULL, NULL, NULL, NULL, 'Красный', 8);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (24, NULL, NULL, NULL, NULL, 'Желтый', 8);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (25, NULL, NULL, NULL, NULL, 'Средний', 13);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (26, NULL, NULL, NULL, NULL, 'Крупный', 13);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (27, NULL, NULL, NULL, NULL, 'Стандартный', 13);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (28, NULL, NULL, NULL, NULL, 'Фасованный', 14);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (29, NULL, NULL, NULL, NULL, 'На развес', 14);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (30, NULL, NULL, NULL, NULL, 'Пинк парадайз', 15);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (31, NULL, NULL, NULL, NULL, 'Прочие', 15);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (32, NULL, NULL, NULL, NULL, 'Тепличный', 16);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (33, NULL, NULL, NULL, NULL, 'Грунтовой', 16);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (34, NULL, NULL, NULL, NULL, 'На ветке', 17);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (35, NULL, NULL, NULL, NULL, 'Отдельно', 17);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (36, NULL, NULL, NULL, NULL, 'Кистевые', 17);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (37, NULL, NULL, NULL, NULL, 'Другое', 17);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (38, NULL, NULL, NULL, NULL, 'Круглые', 19);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (39, NULL, NULL, NULL, NULL, 'Сливовидные', 19);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (40, NULL, NULL, NULL, NULL, 'Красный', 20);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (41, NULL, NULL, NULL, NULL, 'Розовый', 20);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (42, NULL, NULL, NULL, NULL, '2018', 22);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (43, NULL, NULL, NULL, NULL, '2019', 22);
INSERT INTO ref_property_value (id, changed_at, changed_by, created_at, created_by, name, property_id) VALUES (44, NULL, NULL, NULL, NULL, '2020', 22);

INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (1, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 1);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (2, NULL, NULL, NULL, NULL, 1, 2, 1, NULL, 2);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (3, NULL, NULL, NULL, NULL, 1, 3, 1, NULL, 3);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (4, NULL, NULL, NULL, NULL, 1, 5, 1, NULL, 4);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (5, NULL, NULL, NULL, NULL, 1, 7, 1, NULL, 5);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (6, NULL, NULL, NULL, NULL, 1, 8, 1, NULL, 6);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (7, NULL, NULL, NULL, NULL, 1, 9, 1, NULL, 7);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (8, NULL, NULL, NULL, NULL, 1, 10, 1, NULL, 8);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (9, NULL, NULL, NULL, NULL, 1, 11, 1, NULL, 9);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (10, NULL, NULL, NULL, NULL, 1, 12, 1, NULL, 10);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (11, NULL, NULL, NULL, NULL, 5, 13, 1, NULL, 1);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (12, NULL, NULL, NULL, NULL, 5, 14, 1, NULL, 2);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (13, NULL, NULL, NULL, NULL, 5, 15, 1, NULL, 3);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (14, NULL, NULL, NULL, NULL, 5, 16, 1, NULL, 4);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (15, NULL, NULL, NULL, NULL, 5, 17, 1, NULL, 5);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (16, NULL, NULL, NULL, NULL, 5, 19, 1, NULL, 6);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (17, NULL, NULL, NULL, NULL, 5, 20, 1, NULL, 7);
INSERT INTO ref_goods_property (id, changed_at, changed_by, created_at, created_by, goods_id, property_id, section_id, check_fill, order_num) VALUES (18, NULL, NULL, NULL, NULL, 1, 22, 1, NULL, 11);

INSERT INTO ref_account (id, changed_at, created_at, email, contractor_id, department_id, account_settings_id, status, note) VALUES (1, NULL, NULL, 'frunze', NULL, NULL, NULL, 1, NULL);
INSERT INTO ref_account (id, changed_at, created_at, email, contractor_id, department_id, account_settings_id, status, note) VALUES (2, NULL, NULL, 'nurbek', NULL, NULL, NULL, 1, NULL);
INSERT INTO ref_account (id, changed_at, created_at, email, contractor_id, department_id, account_settings_id, status, note) VALUES (3, '2019-10-04 16:22:49.069', '2019-10-04 16:22:49.069', 'admin@python.com', NULL, NULL, NULL, 1, NULL);

INSERT INTO ref_contractor (id, changed_at, changed_by, created_at, created_by, inn, name, full_name, okpo, social_number, type, bank_account_id, sti_id, lfc_id, web_page, host, port, imap_host, imap_port, department_id) VALUES (1, NULL, NULL, NULL, NULL, NULL, 'Фрунзе', 'ЗАО "Партнер Кей Джи"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ref_contractor (id, changed_at, changed_by, created_at, created_by, inn, name, full_name, okpo, social_number, type, bank_account_id, sti_id, lfc_id, web_page, host, port, imap_host, imap_port, department_id) VALUES (2, NULL, NULL, NULL, NULL, NULL, 'Нурбек', 'Турдубеков Нурбек', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ref_contractor (id, changed_at, changed_by, created_at, created_by, inn, name, full_name, okpo, social_number, type, bank_account_id, sti_id, lfc_id, web_page, host, port, imap_host, imap_port, department_id) VALUES (3, NULL, NULL, NULL, NULL, '99999999999999', 'Не идентифицированный партнер', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO ref_contractor_department (id, changed_at, changed_by, created_at, created_by, parent, contractor_id, name, number, department_uuid, type, notice_by_mail, email, address_id, phone_id) VALUES (1, NULL, NULL, NULL, NULL, NULL, 3, 'Основной', NULL, NULL, NULL, false, NULL, NULL, NULL);
