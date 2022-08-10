-- SQLite
-- Before you run this query, please create a superuser in your terminal using
-- "python manage.py createsuperuser"
-- to test properly.

-- Insert the tag example
insert into app_tag (tag_id, tag_name)
values (1, "시청역 4번 출구");

insert into app_tag (tag_id, tag_name)
values (2, "소음 없는 방");

insert into app_tag (tag_id, tag_name)
values (3, "자취방 추천");

insert into app_tag (tag_id, tag_name)
values (4, "깨끗한 방");

insert into app_tag (tag_id, tag_name)
values (5, "시청역 5번 출구");

-- Insert the broker example
insert into app_brokeragency (brokerAgency_id, brokerAgency_name, brokerAgency_representative_name, brokerAgency_number1, brokerAgency_number2, brokerAgency_location, brokerAgency_company_registration_number, brokerAgency_registration_number, brokerAgency_created_at, brokerAgency_updated_at)
values (1, "뚜벅뚜벅 공인중개사", "김멋사", "010-0000-0000", "02-0000-0000", "서울시 성동구 왕십리로 222", 1, 1, 2022-08-08, 2022-08-08);

insert into app_brokeragency (brokerAgency_id, brokerAgency_name, brokerAgency_representative_name, brokerAgency_number1, brokerAgency_number2, brokerAgency_location, brokerAgency_company_registration_number, brokerAgency_registration_number, brokerAgency_created_at, brokerAgency_updated_at)
values (2, "이집저집 공인중개사", "박멋사", "010-1111-1111", "02-1111-1111", "서울시 성동구 왕십리로 222", 2, 2, 2022-08-08, 2022-08-08);

-- Insert the room info example
insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack)
values (1, 37.566815192716994, 126.97865226139427, "뚜벅뚜벅 공인중개사", "즉시 입주", "010-0000-0000", "M", 10000000, 500000, 70000, 1, 8.0, "1", "O", false, true, false, true, true, true, true, false, true, false, false, true, false, false, false, false);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack)
values (2, 37.56654488268451, 126.97859008395538, "이집저집 공인중개사", "상의 후 결정", "010-1111-1111", "M", 20000000, 200000, 30000, 1, 7.0, "1", "O", true, false, false, true, true, true, true, false, true, false, false, true, false, false, false, false);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack)
values (3, 37.566269954879836, 126.97791668375864, "이집저집 공인중개사", "상의 후 결정", "010-1111-1111", "M", 30000000, 300000, 50000, 1, 10.0, "1", "O", true, false, false, true, true, true, true, false, true, false, false, true, false, false, false, false);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack)
values (4, 37.566269954879836, 126.97791668375864, "뚜벅뚜벅 공인중개사", "상의 후 결정", "010-0000-0000", "M", 30000000, 300000, 50000, 1, 10.0, "1", "O", true, false, false, true, true, true, true, false, true, false, false, true, false, false, false, false);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack)
values (5, 37.567477011641934, 126.9764787946748, "이집저집 공인중개사", "상의 후 결정", "010-1111-1111", "M", 30000000, 300000, 50000, 1, 10.0, "1", "O", true, false, false, true, true, true, true, false, true, false, false, true, false, false, false, false);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack)
values (6,  37.56404365078278, 126.97379169814866, "이집저집 공인중개사", "상의 후 결정", "010-1111-1111", "M", 30000000, 300000, 50000, 1, 10.0, "1", "O", true, false, false, true, true, true, true, false, true, false, false, true, false, false, false, false);

-- Insert the room example
insert into app_room (room_id, roomInfo_id, brokerAgency_id)
values (1, 1, 1);

insert into app_room (room_id, roomInfo_id, brokerAgency_id)
values (2, 2, 2);

insert into app_room (room_id, roomInfo_id, brokerAgency_id)
values (3, 3, 2);

insert into app_room (room_id, roomInfo_id, brokerAgency_id)
values (4, 4, 1);

insert into app_room (room_id, roomInfo_id, brokerAgency_id)
values (5, 5, 2);

insert into app_room (room_id, roomInfo_id, brokerAgency_id)
values (6, 6, 2);

-- Insert the room_tag example
insert into app_room_tag (id, room_id, tag_id)
values (1, 1, 1);

insert into app_room_tag (id, room_id, tag_id)
values (2, 1, 2);

insert into app_room_tag (id, room_id, tag_id)
values (3, 2, 1);

insert into app_room_tag (id, room_id, tag_id)
values (4, 2, 3);

insert into app_room_tag (id, room_id, tag_id)
values (5, 3, 3);

insert into app_room_tag (id, room_id, tag_id)
values (6, 3, 4);

-- Insert the image example
insert into app_image (id, image, roomInfo_id)
values (1, "image/3e4edf1d81104b01a3b9779858090bbf.jpg", 1);

insert into app_image (id, image, roomInfo_id)
values (2, "image/3e4edf1d81104b01a3b9779858090bbf.jpg", 2);

-- Insert the interest example
insert into app_interest (interest_id, room_id, user_id)
values (1, 1, 1);

insert into app_interest (interest_id, room_id, user_id)
values (2, 3, 1);

insert into app_interest (interest_id, room_id, user_id)
values (3, 6, 1);

-- Insert the brokersmanner example
insert into app_brokersmanner (brokerManner_id, brokerAgency_id, user_id, brokersManner_score)
values (1, 1, 1, 36.5);

insert into app_brokersmanner (brokerManner_id, brokerAgency_id, user_id, brokersManner_score)
values (2, 2, 1, 38.5);


-- Insert the checklist example
--insert into app_checklist (checklist_id, roomInfo_id, room_id, user_id)
--values (1, 1, 1, 1);
--
--insert into app_checklist (checklist_id, roomInfo_id, room_id, user_id)
--values (2, 2, 2, 1);
