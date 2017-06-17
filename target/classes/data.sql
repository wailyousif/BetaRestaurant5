INSERT INTO address (id, address_line1, address_line2, city, country, lat, lng, state, street, zip_code) VALUES (-1, 'Debonairs Tower', null, 'Khartoum', 'Sudan', 0, 0, 'KRT', 'Airport St.', '33411');
INSERT INTO contact_info (id, email, phone, address_id) VALUES (-1, 'wail@hotmail.com', '+249901239310', -1);

INSERT INTO restaurant_owner (id, name, contact_info_id) VALUES (-1, 'Wail Mohamed', -1);
INSERT INTO restaurant (id, arabic_name, english_name, logo_file, hq_address_id, owner_id) VALUES (-1, 'ديبونيرز', 'Debonairs', 'debonairs.jpg', -1, -1);
INSERT INTO restaurant_branch (id, arabic_name, english_name, address_id, branch_manager_id, restaurant_id) VALUES (-1, 'فرع الستين', '60 Branch', -1, null, -1);

INSERT INTO user_role (id, default_page, description, role) VALUES (-1, 'owner.jsp', 'Owner-Page', 'OWNER');
INSERT INTO user_role (id, default_page, description, role) VALUES (-2, 'cashier.jsp', 'Cashier Page', 'CASHIER');
INSERT INTO user_role (id, default_page, description, role) VALUES (-3, 'stock.jsp', 'Stock Management Page', 'STOCK_MANAGER');

INSERT INTO app_user (id, creation_time, display_name, enabled, password, username, created_by_id, employee_id, restaurant_branch_id, user_role_id) VALUES (-1, '2017-06-10 18:50:36.777000', 'Wail MY', true, 'We+sNJEng9p6ykLezqhim84+RPwL37aEAuaDt6qE9gL7cl7ff+gawahkn+AMYNZ90zC49cakVy86sY4YZuexxw==', 'wail', null, null, -1, -1);

INSERT INTO public.system_language (id, language) VALUES (1, 'Arabic');
INSERT INTO public.system_language (id, language) VALUES (2, 'English');

INSERT INTO public.cost_category (id, code, user_defined) VALUES (nextval('cost_category_seq'), 'GOVERNMENTAL', false);
INSERT INTO public.cost_category (id, code, user_defined) VALUES (nextval('cost_category_seq'), 'PAYROLL', false);
INSERT INTO public.cost_category (id, code, user_defined) VALUES (nextval('cost_category_seq'), 'RENTAL', false);
INSERT INTO public.cost_category (id, code, user_defined) VALUES (nextval('cost_category_seq'), 'UTILITIES', false);
INSERT INTO public.cost_category (id, code, user_defined) VALUES (nextval('cost_category_seq'), 'OTHERS', false);

INSERT INTO public.cost_category_trans (lang_code, lang_description, cost_category_id, language_id) VALUES ('رسوم حكومية', 'عوائد، ضرائب، الخ.', 1, 1);
INSERT INTO public.cost_category_trans (lang_code, lang_description, cost_category_id, language_id) VALUES ('موظفين', 'مرتبات، بدلات، حوافز للموظفين', 2, 1);
INSERT INTO public.cost_category_trans (lang_code, lang_description, cost_category_id, language_id) VALUES ('ايجارات', 'ايجار محل أو مخزن', 3, 1);
INSERT INTO public.cost_category_trans (lang_code, lang_description, cost_category_id, language_id) VALUES ('خدمات', 'كهرباء، ماء، غاز، الخ.', 4, 1);
INSERT INTO public.cost_category_trans (lang_code, lang_description, cost_category_id, language_id) VALUES ('منصرفات أخرى', 'منصرفات أخرى', 5, 1);

INSERT INTO public.job_type (id, code, user_defined) VALUES (nextval('job_type_seq'), 'COOK', false);
INSERT INTO public.job_type (id, code, user_defined) VALUES (nextval('job_type_seq'), 'WAITER', false);
INSERT INTO public.job_type (id, code, user_defined) VALUES (nextval('job_type_seq'), 'CASHIER', false);
INSERT INTO public.job_type (id, code, user_defined) VALUES (nextval('job_type_seq'), 'ACCOUNTANT', false);
INSERT INTO public.job_type (id, code, user_defined) VALUES (nextval('job_type_seq'), 'SUPERVISOR', false);
INSERT INTO public.job_type (id, code, user_defined) VALUES (nextval('job_type_seq'), 'CLEANER', false);
INSERT INTO public.job_type (id, code, user_defined) VALUES (nextval('job_type_seq'), 'OTHERS', false);

INSERT INTO public.job_type_trans (lang_code, lang_description, job_type_id, language_id) VALUES ('طباخ', 'طباخ', 1, 1);
INSERT INTO public.job_type_trans (lang_code, lang_description, job_type_id, language_id) VALUES ('جرسون', 'جرسون', 2, 1);
INSERT INTO public.job_type_trans (lang_code, lang_description, job_type_id, language_id) VALUES ('كاشير', 'كاشير', 3, 1);
INSERT INTO public.job_type_trans (lang_code, lang_description, job_type_id, language_id) VALUES ('محاسب', 'محاسب', 4, 1);
INSERT INTO public.job_type_trans (lang_code, lang_description, job_type_id, language_id) VALUES ('مشرف', 'مشرف', 5, 1);
INSERT INTO public.job_type_trans (lang_code, lang_description, job_type_id, language_id) VALUES ('عامل نظافة', 'عامل نظافة', 6, 1);
INSERT INTO public.job_type_trans (lang_code, lang_description, job_type_id, language_id) VALUES ('أخرى', 'أخرى', 7, 1);

INSERT INTO public.salary_frequency (id, code, user_defined) VALUES (nextval('salary_frequency_seq'), 'DAILY', false);
INSERT INTO public.salary_frequency (id, code, user_defined) VALUES (nextval('salary_frequency_seq'), 'WEEKLY', false);
INSERT INTO public.salary_frequency (id, code, user_defined) VALUES (nextval('salary_frequency_seq'), 'BI-WEEKLY', false);
INSERT INTO public.salary_frequency (id, code, user_defined) VALUES (nextval('salary_frequency_seq'), 'MONTHLY', false);

INSERT INTO public.salary_frequency_trans (lang_code, lang_description, language_id, salary_frequency_id) VALUES ('يومي', 'يومي', 1, 1);
INSERT INTO public.salary_frequency_trans (lang_code, lang_description, language_id, salary_frequency_id) VALUES ('أسبوعي', 'أسبوعي', 1, 2);
INSERT INTO public.salary_frequency_trans (lang_code, lang_description, language_id, salary_frequency_id) VALUES ('كل أسبوعين', 'كل أسبوعين', 1, 3);
INSERT INTO public.salary_frequency_trans (lang_code, lang_description, language_id, salary_frequency_id) VALUES ('شهري', 'شهري', 1, 4);

INSERT INTO public.quantification_method (id, code, user_defined) VALUES (nextval('quantification_method_seq'), 'QUANTITY', false);
INSERT INTO public.quantification_method (id, code, user_defined) VALUES (nextval('quantification_method_seq'), 'WEIGHT', false);
INSERT INTO public.quantification_method (id, code, user_defined) VALUES (nextval('quantification_method_seq'), 'VOLUME', false);

INSERT INTO public.quantification_method_trans (lang_code, lang_description, language_id, quantification_method_id) VALUES ('كمية', 'كمية معدودة', 1, 1);
INSERT INTO public.quantification_method_trans (lang_code, lang_description, language_id, quantification_method_id) VALUES ('وزن', 'وزن', 1, 2);
INSERT INTO public.quantification_method_trans (lang_code, lang_description, language_id, quantification_method_id) VALUES ('حجم', 'لتر أو غيره', 1, 3);

INSERT INTO public.quantification_unit (id, code, user_defined, quantification_method_id) VALUES (nextval('quantification_unit_seq'), 'QTY', false, 1);
INSERT INTO public.quantification_unit (id, code, user_defined, quantification_method_id) VALUES (nextval('quantification_unit_seq'), 'GRAM', false, 2);
INSERT INTO public.quantification_unit (id, code, user_defined, quantification_method_id) VALUES (nextval('quantification_unit_seq'), 'KILOGRAM', false, 2);
INSERT INTO public.quantification_unit (id, code, user_defined, quantification_method_id) VALUES (nextval('quantification_unit_seq'), 'POUND', false, 2);
INSERT INTO public.quantification_unit (id, code, user_defined, quantification_method_id) VALUES (nextval('quantification_unit_seq'), 'OUNCE', false, 2);
INSERT INTO public.quantification_unit (id, code, user_defined, quantification_method_id) VALUES (nextval('quantification_unit_seq'), 'MILLI-LITER', false, 3);
INSERT INTO public.quantification_unit (id, code, user_defined, quantification_method_id) VALUES (nextval('quantification_unit_seq'), 'LITER', false, 3);

INSERT INTO public.quantification_unit_trans (lang_code, lang_description, language_id, quantification_unit_id) VALUES ('حبة', 'حبة', 1, 1);
INSERT INTO public.quantification_unit_trans (lang_code, lang_description, language_id, quantification_unit_id) VALUES ('جم', 'جم', 1, 2);
INSERT INTO public.quantification_unit_trans (lang_code, lang_description, language_id, quantification_unit_id) VALUES ('كجم', 'كجم', 1, 3);
INSERT INTO public.quantification_unit_trans (lang_code, lang_description, language_id, quantification_unit_id) VALUES ('رطل', 'رطل', 1, 4);
INSERT INTO public.quantification_unit_trans (lang_code, lang_description, language_id, quantification_unit_id) VALUES ('أوقية', 'أوقية', 1, 5);
INSERT INTO public.quantification_unit_trans (lang_code, lang_description, language_id, quantification_unit_id) VALUES ('ميللتر', 'ميللتر', 1, 6);
INSERT INTO public.quantification_unit_trans (lang_code, lang_description, language_id, quantification_unit_id) VALUES ('لتر', 'لتر', 1, 7);


INSERT INTO public.recurrence (id, code, user_defined) VALUES (nextval('recurrence_seq'), 'AD-HOC', false);
INSERT INTO public.recurrence (id, code, user_defined) VALUES (nextval('recurrence_seq'), 'DAILY', false);
INSERT INTO public.recurrence (id, code, user_defined) VALUES (nextval('recurrence_seq'), 'WEEKLY', false);
INSERT INTO public.recurrence (id, code, user_defined) VALUES (nextval('recurrence_seq'), 'BI-WEEKLY', false);
INSERT INTO public.recurrence (id, code, user_defined) VALUES (nextval('recurrence_seq'), 'MONTHLY', false);
INSERT INTO public.recurrence (id, code, user_defined) VALUES (nextval('recurrence_seq'), 'QUARTERLY', false);
INSERT INTO public.recurrence (id, code, user_defined) VALUES (nextval('recurrence_seq'), 'BI-ANNUAL', false);
INSERT INTO public.recurrence (id, code, user_defined) VALUES (nextval('recurrence_seq'), 'ANNUAL', false);

INSERT INTO public.recurrence_trans (lang_code, lang_description, language_id, recurrence_id) VALUES ('لحظي', 'لحظي', 1, 1);
INSERT INTO public.recurrence_trans (lang_code, lang_description, language_id, recurrence_id) VALUES ('يومي', 'يومي', 1, 2);
INSERT INTO public.recurrence_trans (lang_code, lang_description, language_id, recurrence_id) VALUES ('أسبوعي', 'أسبوعي', 1, 3);
INSERT INTO public.recurrence_trans (lang_code, lang_description, language_id, recurrence_id) VALUES ('كل أسبوعين', 'كل أسبوعين', 1, 4);
INSERT INTO public.recurrence_trans (lang_code, lang_description, language_id, recurrence_id) VALUES ('شهري', 'شهري', 1, 5);
INSERT INTO public.recurrence_trans (lang_code, lang_description, language_id, recurrence_id) VALUES ('ربع سنوي', 'ربع سنوي', 1, 6);
INSERT INTO public.recurrence_trans (lang_code, lang_description, language_id, recurrence_id) VALUES ('نصف سنوي', 'نصف سنوي', 1, 7);
INSERT INTO public.recurrence_trans (lang_code, lang_description, language_id, recurrence_id) VALUES ('سنوي', 'سنوي', 1, 8);

/*
INSERT INTO public.sales_item_type (code, user_defined) VALUES ('SANDWISH', false);
INSERT INTO public.sales_item_type (code, user_defined) VALUES ('APPETIZER', false);
INSERT INTO public.sales_item_type (code, user_defined) VALUES ('DISH', false);
INSERT INTO public.sales_item_type (code, user_defined) VALUES ('DESERT', false);
INSERT INTO public.sales_item_type (code, user_defined) VALUES ('DRINK', false);
INSERT INTO public.sales_item_type (code, user_defined) VALUES ('PASTRY', false);
INSERT INTO public.sales_item_type (code, user_defined) VALUES ('OTHER', false);

INSERT INTO public.sales_item_type_trans (lang_code, lang_description, language_id, sales_item_type_code) VALUES ('سندوتش', 'سندوتش', 1, 'SANDWISH');
INSERT INTO public.sales_item_type_trans (lang_code, lang_description, language_id, sales_item_type_code) VALUES ('مقبلات', 'مقبلات', 1, 'APPETIZER');
INSERT INTO public.sales_item_type_trans (lang_code, lang_description, language_id, sales_item_type_code) VALUES ('طبق', 'طبق', 1, 'DISH');
INSERT INTO public.sales_item_type_trans (lang_code, lang_description, language_id, sales_item_type_code) VALUES ('تحلية', 'تحلية', 1, 'DESERT');
INSERT INTO public.sales_item_type_trans (lang_code, lang_description, language_id, sales_item_type_code) VALUES ('مشروب', 'مشروب', 1, 'DRINK');
INSERT INTO public.sales_item_type_trans (lang_code, lang_description, language_id, sales_item_type_code) VALUES ('معجنات', 'معجنات', 1, 'PASTRY');
INSERT INTO public.sales_item_type_trans (lang_code, lang_description, language_id, sales_item_type_code) VALUES ('أخرى', 'أخرى', 1, 'OTHER');
*/