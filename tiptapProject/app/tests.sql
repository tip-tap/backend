-- SQLite
-- Before you run this query, please create a superuser in your terminal using
-- "python manage.py createsuperuser"
-- to test properly.

-- Insert the tag example
INSERT INTO app_tag (tag_id, tag_name)
VALUES (1, "왕십리역 6번 출구");

INSERT INTO app_tag (tag_id, tag_name)
VALUES (2, "소음 없는 방");

INSERT INTO app_tag (tag_id, tag_name)
VALUES (3, "자취생 추천");

-- Insert the broker example
INSERT INTO app_brokeragency (brokerAgency_id, brokerAgency_name, brokerAgency_representative_name, brokerAgency_number1, brokerAgency_number2, brokerAgency_location, brokerAgency_company_registration_number, brokerAgency_registration_number, brokerAgency_created_at, brokerAgency_updated_at)
VALUES (1, "뚜벅뚜벅 공인중개사", "김멋사", "010-0000-0000", "02-0000-0000", "서울시 성동구 왕십리로 222", 1, 1, 2022-08-08, 2022-08-08);

INSERT INTO app_brokeragency (brokerAgency_id, brokerAgency_name, brokerAgency_representative_name, brokerAgency_number1, brokerAgency_number2, brokerAgency_location, brokerAgency_company_registration_number, brokerAgency_registration_number, brokerAgency_created_at, brokerAgency_updated_at)
VALUES (2, "이집저집 공인중개사", "박멋사", "010-1111-1111", "02-1111-1111", "서울시 성동구 왕십리로 222", 2, 2, 2022-08-08, 2022-08-08);

-- Insert the room info example
INSERT INTO app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack, detailInfo_is_moldy, detailInfo_is_leak, detailInfo_is_bug, detailInfo_is_crack, detailInfo_window_size, detailInfo_water_pressure, detailInfo_drainage, detailInfo_hot_water)
VALUES (1, 36.0, 36.0, "뚜벅뚜벅 공인중개사", "즉시 입주", "010-0000-0000", "M", 10000000, 500000, 70000, 1, 8.0, "1", "O", false, true, false, true, true, true, true, false, true, false, false, true, false, false, false, false, false, false, false, false, "L", "S", "S", "S");

INSERT INTO app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack, detailInfo_is_moldy, detailInfo_is_leak, detailInfo_is_bug, detailInfo_is_crack, detailInfo_window_size, detailInfo_water_pressure, detailInfo_drainage, detailInfo_hot_water)
VALUES (2, 35.9, 35.9, "이집저집 공인중개사", "상의 후 결정", "010-1111-1111", "M", 20000000, 200000, 30000, 1, 7.0, "1", "O", true, false, false, true, true, true, true, false, true, false, false, true, false, false, false, false, false, false, false, false, "L", "S", "S", "S");

-- Insert the room example
INSERT INTO app_room (room_id, roomInfo_id, brokerAgency_id)
VALUES (1, 1, 1);

INSERT INTO app_room (room_id, roomInfo_id, brokerAgency_id)
VALUES (2, 2, 2);

-- Insert the room_tag example
INSERT INTO app_room_tag (id, room_id, tag_id)
VALUES (1, 1, 1);

INSERT INTO app_room_tag (id, room_id, tag_id)
VALUES (2, 1, 2);

INSERT INTO app_room_tag (id, room_id, tag_id)
VALUES (3, 2, 1);

-- Insert the image example
INSERT INTO app_image (id, image, roomInfo_id)
VALUES (1, "media/image/3e4edf1d81104b01a3b9779858090bbf.jpg", 1);

INSERT INTO app_image (id, image, roomInfo_id)
VALUES (2, "media/image/3e4edf1d81104b01a3b9779858090bbf.jpg", 2);

-- Insert the interest example
INSERT INTO app_interest (interest_id, room_id, user_id)
VALUES (1, 1, 1);
