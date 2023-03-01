-- SQLite

-- Before you run this query, please create a superuser in your terminal using

-- "python manage.py createsuperuser"

-- to test properly.



-- Tag

insert into app_tag (tag_id, tag_name) values (1, "소음 없는 방");

insert into app_tag (tag_id, tag_name) values (2, "편의점 3분 거리");

insert into app_tag (tag_id, tag_name) values (3, "노래방 3분 거리");

insert into app_tag (tag_id, tag_name) values (4, "자취방 추천");

insert into app_tag (tag_id, tag_name) values (5, "멋진 방");

insert into app_tag (tag_id, tag_name) values (6, "깨끗한 방");

insert into app_tag (tag_id, tag_name) values (7, "신축");



-- BrokerAgency

insert into app_brokeragency (brokerAgency_id, brokerAgency_name, brokerAgency_representative_name, brokerAgency_number1, brokerAgency_number2, brokerAgency_location, brokerAgency_company_registration_number, brokerAgency_registration_number, brokerAgency_created_at, brokerAgency_updated_at) values (1, "뚜벅뚜벅 공인중개사", "김멋사", "010-0000-0000", "02-0000-0000", "서울시 성동구 왕십리로 222", 1, 1, 2022-08-08, 2022-08-08);

insert into app_brokeragency (brokerAgency_id, brokerAgency_name, brokerAgency_representative_name, brokerAgency_number1, brokerAgency_number2, brokerAgency_location, brokerAgency_company_registration_number, brokerAgency_registration_number, brokerAgency_created_at, brokerAgency_updated_at) values (2, "이집저집 공인중개사", "박멋사", "010-1111-1111", "02-1111-1111", "서울시 성동구 왕십리로 222", 2, 2, 2022-08-08, 2022-08-08);

insert into app_brokeragency (brokerAgency_id, brokerAgency_name, brokerAgency_representative_name, brokerAgency_number1, brokerAgency_number2, brokerAgency_location, brokerAgency_company_registration_number, brokerAgency_registration_number, brokerAgency_created_at, brokerAgency_updated_at) values (3, "해커톤파이팅 공인중개사", "박멋사", "010-7777-7777", "02-7777-7777", "서울시 성동구 왕십리로 222", 2, 2, 2022-08-08, 2022-08-08);



-- BrokersManner

insert into app_brokersmanner (brokerManner_id, brokerAgency_id, user_id, brokersManner_score) values (1, 1, 1, 36.5);

insert into app_brokersmanner (brokerManner_id, brokerAgency_id, user_id, brokersManner_score) values (2, 2, 1, 38.5);

insert into app_brokersmanner (brokerManner_id, brokerAgency_id, user_id, brokersManner_score) values (3, 2, 1, 0);



-- Room, RoomInfo, RoomTag

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (1, 37.46841885650349, 127.22009322958858, "경기 광주시 남한산성면 엄미리 산 259", "이집저집 공인중개사", "2022-08-26", "010-0000-0000", "BJ", 31000000, 1200000, 50000, 2, 25.3, "1", "K", False,False, True, True, False, False, False, False, False, True, False, True, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (1, "2022-08-13 09:00:00", 1, 3);

insert into app_room_tag (room_id, tag_id) values (1, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (2, 37.414813721050685, 127.02180292831636, "경기 과천시 막계동 산 89", "이집저집 공인중개사", "2022-09-12", "010-0000-0000", "J", 148000000, 0, 30000, 6, 11.8, "2", "KV", True,True, True, True, False, True, True, True, True, True, False, False, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (2, "2022-08-13 09:00:00", 2, 3);

insert into app_room_tag (room_id, tag_id) values (2, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (3, 37.544826809314024, 126.94810403195828, "서울특별시 마포구 백범로 152", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 54000000, 1400000, 60000, 5, 27.7, "1.5", "V", True,False, True, True, False, True, True, False, False, False, False, False, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (3, "2022-08-13 09:00:00", 3, 1);

insert into app_room_tag (room_id, tag_id) values (3, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (4, 37.495269289951366, 127.18198038533025, "경기 하남시 항동 산 127", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 57000000, 1200000, 50000, 2, 28.3, "1", "L", False,False, False, True, True, True, False, False, False, True, True, True, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (4, "2022-08-13 09:00:00", 4, 3);

insert into app_room_tag (room_id, tag_id) values (4, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (5, 37.630371368911895, 126.85726843409154, "경기 고양시 덕양구 도내동 847-14", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 122000000, 300000, 60000, 5, 20.8, "2", "K", True,True, False, True, True, False, False, False, False, False, True, False, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (5, "2022-08-13 09:00:00", 5, 3);

insert into app_room_tag (room_id, tag_id) values (5, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (6, 37.48213948039356, 127.20942969308304, "경기 하남시 상산곡동 산 255-2", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 152000000, 1200000, 40000, 7, 15.5, "2", "L", False,True, False, False, False, True, True, True, False, False, True, False, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (6, "2022-08-13 09:00:00", 6, 1);

insert into app_room_tag (room_id, tag_id) values (6, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (7, 37.42897286688884, 126.92834904917812, "경기 안양시 만안구 석수동 산 11-2", "이집저집 공인중개사", "2022-06-11", "010-0000-0000", "M", 111000000, 800000, 20000, 6, 6.3, "1", "O", False,False, True, True, True, False, False, False, True, True, False, False, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (7, "2022-08-13 09:00:00", 7, 2);

insert into app_room_tag (room_id, tag_id) values (7, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (8, 37.69429140568848, 127.04865170071092, "경기 의정부시 호원동 168-3", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 31000000, 1400000, 80000, 4, 17.2, "2", "O", True,False, True, False, False, True, False, True, False, False, True, False, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (8, "2022-08-13 09:00:00", 8, 2);

insert into app_room_tag (room_id, tag_id) values (8, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (9, 37.56152447310878, 126.95177973057334, "서울 서대문구 북아현동 204-4", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 176000000, 800000, 100000, 2, 23.2, "2", "K", True,True, False, False, True, False, False, True, True, False, True, False, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (9, "2022-08-13 09:00:00", 9, 1);

insert into app_room_tag (room_id, tag_id) values (9, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (10, 37.59663507678133, 126.95054735202248, "서울 서대문구 홍제동 287-207", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 23000000, 1500000, 20000, 6, 18.1, "1", "L", True,False, False, True, False, False, False, False, True, True, False, False, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (10, "2022-08-13 09:00:00", 10, 3);

insert into app_room_tag (room_id, tag_id) values (10, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (11, 37.53987670460057, 126.92546267497012, "서울 마포구 당인동 184", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 184000000, 1000000, 20000, 5, 5.3, "1.5", "O", True,True, False, True, True, False, True, False, True, True, False, False, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (11, "2022-08-13 09:00:00", 11, 3);

insert into app_room_tag (room_id, tag_id) values (11, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (12, 37.74234843707054, 127.08560338676118, "경기 의정부시 용현동 549-3", "이집저집 공인중개사", "2022-07-30", "010-0000-0000", "BJ", 105000000, 1200000, 20000, 9, 18.2, "3", "L", False,True, False, True, False, True, True, False, True, True, False, True, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (12, "2022-08-13 09:00:00", 12, 2);

insert into app_room_tag (room_id, tag_id) values (12, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (13, 37.56095795322635, 127.15834807149491, "서울특별시 강동구 동남로82길 29-12", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 4000000, 500000, 30000, 9, 22.0, "2", "L", True,False, True, False, True, True, False, True, False, False, False, False, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (13, "2022-08-13 09:00:00", 13, 3);

insert into app_room_tag (room_id, tag_id) values (13, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (14, 37.51074153460203, 126.86120335096824, "서울특별시 양천구 목동로3길 57", "뚜벅뚜벅 공인중개사", "2022-02-22", "010-0000-0000", "BJ", 86000000, 1000000, 100000, 8, 21.8, "2", "V", True,True, True, False, True, True, False, True, True, True, True, False, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (14, "2022-08-13 09:00:00", 14, 3);

insert into app_room_tag (room_id, tag_id) values (14, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (15, 37.58763333032211, 127.05065327304611, "서울특별시 동대문구 제기로 131", "이집저집 공인중개사", "2022-02-23", "010-0000-0000", "M", 163000000, 900000, 100000, 9, 11.9, "1", "O", True,False, True, True, False, True, True, True, False, False, False, False, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (15, "2022-08-13 09:00:00", 15, 1);

insert into app_room_tag (room_id, tag_id) values (15, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (16, 37.477256969590016, 126.96102251217819, "서울 관악구 봉천동 1693-47", "뚜벅뚜벅 공인중개사", "2022-01-16", "010-0000-0000", "BJ", 112000000, 200000, 20000, 9, 23.7, "1.5", "KV", False,False, False, False, False, False, True, False, True, True, True, False, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (16, "2022-08-13 09:00:00", 16, 1);

insert into app_room_tag (room_id, tag_id) values (16, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (17, 37.67520903115941, 127.01720541955208, "서울 도봉구 도봉동 산 86-2", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 198000000, 500000, 90000, 7, 15.9, "1.5", "O", True,False, True, False, False, True, True, True, False, False, True, True, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (17, "2022-08-13 09:00:00", 17, 1);

insert into app_room_tag (room_id, tag_id) values (17, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (18, 37.47274303356918, 127.18576766308293, "경기 광주시 남한산성면 산성리 산 32-1", "뚜벅뚜벅 공인중개사", "2022-05-28", "010-0000-0000", "J", 80000000, 0, 10000, 1, 9.4, "3", "V", False,True, True, True, True, True, True, False, True, False, True, True, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (18, "2022-08-13 09:00:00", 18, 2);

insert into app_room_tag (room_id, tag_id) values (18, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (19, 37.58235455019737, 127.22127694892822, "경기 남양주시 와부읍 도곡리 산 43-2", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "M", 135000000, 800000, 100000, 9, 28.6, "2", "L", True,False, True, False, True, False, True, True, True, True, False, True, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (19, "2022-08-13 09:00:00", 19, 3);

insert into app_room_tag (room_id, tag_id) values (19, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (20, 37.69625873591671, 127.18770298870288, "경기 남양주시 오남읍 양지리 산 59", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 86000000, 1300000, 70000, 1, 30.0, "1", "V", True,False, True, False, False, True, False, False, False, False, True, False, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (20, "2022-08-13 09:00:00", 20, 2);

insert into app_room_tag (room_id, tag_id) values (20, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (21, 37.681245646766534, 127.21967622541392, "경기 남양주시 오남읍 오남리 산 72-3", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 80000000, 600000, 60000, 6, 7.0, "1.5", "V", False,True, True, True, True, False, True, True, True, False, False, True, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (21, "2022-08-13 09:00:00", 21, 1);

insert into app_room_tag (room_id, tag_id) values (21, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (22, 37.63364163083816, 126.9328365034757, "서울 은평구 진관동 148-31", "뚜벅뚜벅 공인중개사", "2022-07-24", "010-0000-0000", "BJ", 110000000, 800000, 90000, 8, 24.2, "1.5", "V", True,True, False, False, True, True, True, False, False, False, True, False, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (22, "2022-08-13 09:00:00", 22, 1);

insert into app_room_tag (room_id, tag_id) values (22, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (23, 37.63915205379302, 126.99608018595757, "서울 강북구 수유동 산 127-1", "뚜벅뚜벅 공인중개사", "2022-03-30", "010-0000-0000", "BJ", 72000000, 700000, 90000, 9, 20.0, "1", "O", True,False, True, True, False, False, False, True, False, True, True, False, False, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (23, "2022-08-13 09:00:00", 23, 1);

insert into app_room_tag (room_id, tag_id) values (23, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (24, 37.50310209678063, 126.87586327689148, "서울특별시 구로구 경인로53길 50", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 110000000, 700000, 80000, 2, 6.7, "3", "O", False,True, True, False, False, True, False, False, False, True, False, True, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (24, "2022-08-13 09:00:00", 24, 3);

insert into app_room_tag (room_id, tag_id) values (24, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (25, 37.71432877630477, 127.03488829462289, "경기 의정부시 호원동 산 79-2", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "J", 76000000, 0, 40000, 6, 26.5, "1.5", "O", True,True, False, True, False, False, True, False, False, True, True, False, False, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (25, "2022-08-13 09:00:00", 25, 2);

insert into app_room_tag (room_id, tag_id) values (25, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (26, 37.42471855267024, 126.88428834025515, "경기도 광명시 일직로 17", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 98000000, 400000, 90000, 7, 8.8, "3", "KV", True,False, True, False, True, True, False, True, False, True, True, True, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (26, "2022-08-13 09:00:00", 26, 3);

insert into app_room_tag (room_id, tag_id) values (26, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (27, 37.52792738327203, 127.2236564056791, "경기 하남시 창우동 333-6", "뚜벅뚜벅 공인중개사", "2022-02-12", "010-0000-0000", "M", 108000000, 1000000, 20000, 1, 30.0, "1", "V", False,True, True, False, False, True, False, False, False, True, False, False, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (27, "2022-08-13 09:00:00", 27, 3);

insert into app_room_tag (room_id, tag_id) values (27, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (28, 37.49950411299693, 127.2157582071086, "경기 하남시 하산곡동 산 48-1", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "M", 25000000, 400000, 90000, 8, 7.4, "3", "O", False,False, False, True, True, False, True, False, True, False, False, True, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (28, "2022-08-13 09:00:00", 28, 2);

insert into app_room_tag (room_id, tag_id) values (28, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (29, 37.522001307015756, 127.06948222661951, "서울 송파구 신천동 243", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "J", 74000000, 0, 60000, 1, 25.5, "3", "V", True,True, False, True, True, False, True, False, False, False, False, False, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (29, "2022-08-13 09:00:00", 29, 2);

insert into app_room_tag (room_id, tag_id) values (29, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (30, 37.59159031351487, 126.95791303833045, "서울 종로구 부암동 산 17-1", "해커톤파이팅 공인중개사", "2022-07-11", "010-0000-0000", "BJ", 39000000, 1300000, 100000, 1, 10.2, "1.5", "KV", True,True, True, True, False, True, True, True, True, True, False, True, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (30, "2022-08-13 09:00:00", 30, 2);

insert into app_room_tag (room_id, tag_id) values (30, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (31, 37.45757057589189, 127.04284393727569, "서울 서초구 원지동 42-2", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "M", 113000000, 700000, 20000, 3, 6.4, "1.5", "K", False,False, True, False, False, True, False, True, False, True, True, True, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (31, "2022-08-13 09:00:00", 31, 3);

insert into app_room_tag (room_id, tag_id) values (31, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (32, 37.46161268652716, 126.91653186773875, "서울특별시 관악구 난향3길 31", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "M", 88000000, 500000, 40000, 2, 8.2, "2", "V", True,False, False, True, True, True, True, True, False, False, False, False, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (32, "2022-08-13 09:00:00", 32, 2);

insert into app_room_tag (room_id, tag_id) values (32, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (33, 37.71177081488619, 127.21870882327761, "경기 남양주시 진접읍 금곡리 산 96", "뚜벅뚜벅 공인중개사", "2022-08-23", "010-0000-0000", "J", 4000000, 0, 80000, 8, 9.2, "1.5", "KV", True,False, True, True, True, True, False, False, True, True, False, True, False, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (33, "2022-08-13 09:00:00", 33, 1);

insert into app_room_tag (room_id, tag_id) values (33, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (34, 37.53069562707621, 126.97936362741234, "서울 용산구 용산동3가 12-1", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "J", 174000000, 0, 70000, 6, 5.0, "1.5", "O", False,False, True, False, True, True, True, True, False, True, True, False, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (34, "2022-08-13 09:00:00", 34, 3);

insert into app_room_tag (room_id, tag_id) values (34, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (35, 37.46541647333609, 127.2170881393593, "경기 광주시 남한산성면 엄미리 산 276-4", "이집저집 공인중개사", "2022-04-17", "010-0000-0000", "M", 144000000, 1100000, 40000, 8, 18.7, "1.5", "K", False,False, True, True, True, True, False, False, True, True, True, True, False, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (35, "2022-08-13 09:00:00", 35, 1);

insert into app_room_tag (room_id, tag_id) values (35, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (36, 37.68788873033601, 127.10198601223371, "경기 남양주시 별내동 산 205-1", "뚜벅뚜벅 공인중개사", "2022-08-24", "010-0000-0000", "M", 157000000, 1300000, 50000, 6, 21.7, "2", "L", True,True, False, True, False, True, True, True, False, False, False, False, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (36, "2022-08-13 09:00:00", 36, 3);

insert into app_room_tag (room_id, tag_id) values (36, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (37, 37.56770959582109, 127.18055275432694, "경기도 하남시 아리수로 499", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 22000000, 400000, 60000, 9, 19.8, "2", "O", False,False, True, False, True, True, True, True, True, True, False, True, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (37, "2022-08-13 09:00:00", 37, 3);

insert into app_room_tag (room_id, tag_id) values (37, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (38, 37.659485920568756, 127.07746490933009, "서울특별시 노원구 덕릉로82길 55", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 46000000, 800000, 30000, 8, 22.8, "3", "O", True,False, False, False, True, True, True, True, False, False, False, True, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (38, "2022-08-13 09:00:00", 38, 2);

insert into app_room_tag (room_id, tag_id) values (38, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (39, 37.7136622019336, 126.86600012525179, "경기도 고양시 덕양구 고골길 119", "이집저집 공인중개사", "2022-08-29", "010-0000-0000", "BJ", 66000000, 1000000, 60000, 9, 11.7, "1.5", "L", True,False, True, False, True, False, True, True, False, False, True, False, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (39, "2022-08-13 09:00:00", 39, 3);

insert into app_room_tag (room_id, tag_id) values (39, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (40, 37.40837209260752, 127.10468075914413, "경기 성남시 분당구 삼평동 산 2-10", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "J", 119000000, 0, 60000, 9, 12.8, "2", "K", True,True, True, False, False, True, False, True, False, False, False, False, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (40, "2022-08-13 09:00:00", 40, 2);

insert into app_room_tag (room_id, tag_id) values (40, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (41, 37.41473225778646, 126.86414168722618, "경기 광명시 가학동 252-9", "이집저집 공인중개사", "2022-04-11", "010-0000-0000", "BJ", 101000000, 900000, 60000, 4, 13.0, "3", "K", True,True, True, False, True, False, False, True, False, False, False, True, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (41, "2022-08-13 09:00:00", 41, 2);

insert into app_room_tag (room_id, tag_id) values (41, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (42, 37.51019357188079, 127.11093412599618, "서울특별시 송파구 백제고분로45길 8-21", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "M", 179000000, 1500000, 50000, 6, 21.3, "2", "L", False,False, True, False, False, True, True, True, False, True, False, False, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (42, "2022-08-13 09:00:00", 42, 1);

insert into app_room_tag (room_id, tag_id) values (42, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (43, 37.586055875897195, 126.89482701607488, "서울 은평구 수색동 351-7", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 30000000, 100000, 60000, 7, 16.4, "1", "L", False,True, False, True, True, False, True, False, False, False, False, True, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (43, "2022-08-13 09:00:00", 43, 3);

insert into app_room_tag (room_id, tag_id) values (43, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (44, 37.596189809536114, 127.03605574084463, "서울 성북구 종암동 10-75", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 68000000, 300000, 20000, 5, 22.0, "2", "L", True,False, True, False, True, True, False, False, True, False, False, True, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (44, "2022-08-13 09:00:00", 44, 3);

insert into app_room_tag (room_id, tag_id) values (44, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (45, 37.50283177306741, 126.90550290339664, "서울특별시 영등포구 도림로80가길 14", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "J", 132000000, 0, 40000, 2, 28.7, "1.5", "V", True,False, True, False, False, True, True, True, False, False, True, True, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (45, "2022-08-13 09:00:00", 45, 1);

insert into app_room_tag (room_id, tag_id) values (45, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (46, 37.575692031418924, 127.18116604589025, "경기도 하남시 미사강변한강로 60", "해커톤파이팅 공인중개사", "2022-01-18", "010-0000-0000", "J", 111000000, 0, 30000, 4, 10.5, "2", "K", True,False, True, False, False, False, True, True, False, True, False, True, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (46, "2022-08-13 09:00:00", 46, 1);

insert into app_room_tag (room_id, tag_id) values (46, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (47, 37.68298375142759, 127.02158482046933, "서울 도봉구 도봉동 산 51", "이집저집 공인중개사", "2022-08-24", "010-0000-0000", "M", 22000000, 1200000, 90000, 6, 8.7, "3", "O", True,False, False, True, True, False, True, False, True, True, False, False, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (47, "2022-08-13 09:00:00", 47, 2);

insert into app_room_tag (room_id, tag_id) values (47, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (48, 37.51127809308761, 127.00980492519568, "서울특별시 서초구 신반포로33길 39", "해커톤파이팅 공인중개사", "2022-05-29", "010-0000-0000", "BJ", 69000000, 1000000, 10000, 1, 18.4, "1.5", "V", True,False, False, False, False, False, True, True, True, True, False, False, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (48, "2022-08-13 09:00:00", 48, 2);

insert into app_room_tag (room_id, tag_id) values (48, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (49, 37.61386003312665, 127.01994555662267, "서울 강북구 미아동 813-7", "해커톤파이팅 공인중개사", "2022-08-30", "010-0000-0000", "M", 100000000, 1500000, 30000, 8, 8.7, "3", "K", False,False, False, True, True, True, False, False, True, False, False, True, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (49, "2022-08-13 09:00:00", 49, 3);

insert into app_room_tag (room_id, tag_id) values (49, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (50, 37.48333721311357, 126.91146221588582, "서울 관악구 신림동 541", "해커톤파이팅 공인중개사", "2022-02-28", "010-0000-0000", "M", 184000000, 1100000, 10000, 2, 14.2, "1", "O", False,True, True, False, True, True, True, True, False, False, True, True, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (50, "2022-08-13 09:00:00", 50, 2);

insert into app_room_tag (room_id, tag_id) values (50, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (51, 37.513470242880345, 126.96490033353756, "서울 용산구 이촌동 330", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "M", 13000000, 900000, 80000, 1, 17.2, "1", "L", True,True, True, True, True, False, False, False, False, False, False, False, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (51, "2022-08-13 09:00:00", 51, 2);

insert into app_room_tag (room_id, tag_id) values (51, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (52, 37.38433117310377, 126.89837807085419, "경기 안양시 만안구 안양동 1088-111", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 104000000, 1000000, 90000, 3, 6.3, "1.5", "K", True,True, False, True, True, False, True, False, True, True, False, False, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (52, "2022-08-13 09:00:00", 52, 1);

insert into app_room_tag (room_id, tag_id) values (52, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (53, 37.672190322273295, 126.95677243819532, "경기 고양시 덕양구 효자동 83", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 10000000, 1100000, 20000, 1, 26.4, "1", "V", False,True, False, False, False, True, False, True, True, True, True, True, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (53, "2022-08-13 09:00:00", 53, 3);

insert into app_room_tag (room_id, tag_id) values (53, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (54, 37.45007891290743, 127.04876217567706, "서울 서초구 원지동 281", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "J", 93000000, 0, 80000, 6, 12.0, "1.5", "O", True,True, True, False, True, False, False, True, True, False, True, True, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (54, "2022-08-13 09:00:00", 54, 3);

insert into app_room_tag (room_id, tag_id) values (54, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (55, 37.64056196750752, 127.05360616392241, "서울특별시 노원구 마들로5길 25", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "J", 193000000, 0, 40000, 4, 5.9, "3", "K", False,True, False, False, False, False, True, True, False, False, False, True, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (55, "2022-08-13 09:00:00", 55, 3);

insert into app_room_tag (room_id, tag_id) values (55, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (56, 37.639448438475334, 126.98144379857183, "경기 고양시 덕양구 북한동 산 1-1", "해커톤파이팅 공인중개사", "2022-02-28", "010-0000-0000", "BJ", 158000000, 700000, 60000, 9, 22.7, "1", "L", True,False, True, False, True, False, False, True, False, True, False, True, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (56, "2022-08-13 09:00:00", 56, 2);

insert into app_room_tag (room_id, tag_id) values (56, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (57, 37.40989804285866, 127.19548609232119, "경기 광주시 삼동 산 123-18", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 191000000, 200000, 10000, 8, 25.8, "1", "L", True,False, True, True, False, True, True, False, True, True, False, False, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (57, "2022-08-13 09:00:00", 57, 3);

insert into app_room_tag (room_id, tag_id) values (57, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (58, 37.62877934922119, 127.02251400520558, "서울특별시 강북구 도봉로63길 29-4", "이집저집 공인중개사", "2022-06-13", "010-0000-0000", "BJ", 136000000, 1000000, 80000, 1, 22.4, "2", "KV", False,False, True, True, True, True, True, False, False, True, False, True, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (58, "2022-08-13 09:00:00", 58, 1);

insert into app_room_tag (room_id, tag_id) values (58, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (59, 37.60975397949393, 127.22322552165602, "경기 남양주시 와부읍 율석리 192-3", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "J", 80000000, 0, 30000, 6, 14.8, "2", "O", False,True, False, False, False, False, False, True, False, True, True, False, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (59, "2022-08-13 09:00:00", 59, 2);

insert into app_room_tag (room_id, tag_id) values (59, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (60, 37.463173799549196, 127.11991194969461, "경기 성남시 수정구 복정동 338-1", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 17000000, 400000, 80000, 6, 29.8, "1", "V", True,False, False, False, False, True, False, True, True, False, False, True, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (60, "2022-08-13 09:00:00", 60, 3);

insert into app_room_tag (room_id, tag_id) values (60, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (61, 37.569509215215746, 126.89797108471839, "서울특별시 마포구 월드컵로 240", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "J", 195000000, 0, 20000, 4, 24.5, "2", "V", True,False, True, True, True, False, False, True, False, False, True, False, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (61, "2022-08-13 09:00:00", 61, 3);

insert into app_room_tag (room_id, tag_id) values (61, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (62, 37.396427151163316, 127.03646566479286, "경기 의왕시 청계동 산 8-5", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 97000000, 500000, 10000, 9, 16.5, "3", "V", True,False, True, True, True, True, False, False, False, True, False, False, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (62, "2022-08-13 09:00:00", 62, 2);

insert into app_room_tag (room_id, tag_id) values (62, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (63, 37.71008557217963, 127.03274349563243, "경기 의정부시 호원동 산 92-15", "뚜벅뚜벅 공인중개사", "2022-05-16", "010-0000-0000", "J", 164000000, 0, 30000, 3, 5.8, "2", "K", False,True, False, False, True, False, False, False, False, True, True, True, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (63, "2022-08-13 09:00:00", 63, 3);

insert into app_room_tag (room_id, tag_id) values (63, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (64, 37.4817797341017, 127.08817500518921, "서울 강남구 수서동 산 8-1", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 185000000, 400000, 40000, 7, 18.2, "1", "O", True,True, True, False, False, True, False, False, False, True, True, True, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (64, "2022-08-13 09:00:00", 64, 2);

insert into app_room_tag (room_id, tag_id) values (64, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (65, 37.65025943627667, 127.1109055526324, "경기 남양주시 별내동 621-67", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "J", 162000000, 0, 80000, 6, 29.6, "1", "KV", False,True, False, True, True, True, False, True, False, True, True, True, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (65, "2022-08-13 09:00:00", 65, 3);

insert into app_room_tag (room_id, tag_id) values (65, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (66, 37.60402758959937, 126.97259090322686, "서울 종로구 평창동 산 6-2", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "M", 100000000, 700000, 20000, 5, 15.6, "3", "V", False,True, True, True, True, True, False, False, True, True, False, True, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (66, "2022-08-13 09:00:00", 66, 1);

insert into app_room_tag (room_id, tag_id) values (66, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (67, 37.54834445331931, 126.8599912249454, "서울 강서구 등촌동 366-46", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 57000000, 400000, 100000, 4, 11.1, "3", "O", True,True, False, True, True, False, True, True, True, False, True, False, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (67, "2022-08-13 09:00:00", 67, 3);

insert into app_room_tag (room_id, tag_id) values (67, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (68, 37.39257479317108, 127.19524582912072, "경기 광주시 직동 산 45", "해커톤파이팅 공인중개사", "2022-01-20", "010-0000-0000", "BJ", 67000000, 500000, 10000, 4, 13.5, "2", "K", False,False, True, False, False, False, True, True, True, True, False, True, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (68, "2022-08-13 09:00:00", 68, 3);

insert into app_room_tag (room_id, tag_id) values (68, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (69, 37.70553018725525, 127.12777286859185, "경기 남양주시 별내면 광전리 48-13", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 193000000, 1300000, 100000, 7, 27.5, "2", "L", True,True, False, True, False, False, False, True, True, False, False, True, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (69, "2022-08-13 09:00:00", 69, 1);

insert into app_room_tag (room_id, tag_id) values (69, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (70, 37.54057054060639, 127.1673101771112, "경기 하남시 초이동 107-2", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 1000000, 1400000, 70000, 1, 29.9, "2", "V", False,False, False, False, False, True, False, False, False, True, False, False, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (70, "2022-08-13 09:00:00", 70, 1);

insert into app_room_tag (room_id, tag_id) values (70, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (71, 37.591482104210435, 127.05071922172989, "서울 동대문구 회기동 60-1", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "J", 69000000, 0, 20000, 1, 9.2, "2", "L", True,True, True, False, False, False, True, False, True, True, False, False, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (71, "2022-08-13 09:00:00", 71, 2);

insert into app_room_tag (room_id, tag_id) values (71, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (72, 37.68498062101991, 126.87284885650122, "경기 고양시 덕양구 신원동 372-2", "이집저집 공인중개사", "2022-09-30", "010-0000-0000", "BJ", 9000000, 400000, 70000, 9, 17.0, "3", "V", True,True, True, False, True, True, False, False, True, True, False, True, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (72, "2022-08-13 09:00:00", 72, 1);

insert into app_room_tag (room_id, tag_id) values (72, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (73, 37.39334975036776, 126.86758827997063, "경기 시흥시 목감동 175-7", "해커톤파이팅 공인중개사", "2022-03-11", "010-0000-0000", "J", 96000000, 0, 70000, 2, 28.5, "1", "L", False,True, True, True, True, True, True, True, False, False, False, False, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (73, "2022-08-13 09:00:00", 73, 3);

insert into app_room_tag (room_id, tag_id) values (73, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (74, 37.74300208402378, 126.92108443171188, "경기 고양시 덕양구 벽제동 산 1-1", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 50000000, 1500000, 10000, 9, 8.9, "1.5", "O", True,False, False, False, True, False, True, False, True, False, True, False, False, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (74, "2022-08-13 09:00:00", 74, 1);

insert into app_room_tag (room_id, tag_id) values (74, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (75, 37.635169163873734, 127.19178482163274, "경기 남양주시 진건읍 배양리 70-1", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 167000000, 1200000, 50000, 6, 11.7, "1", "O", False,True, True, False, True, True, False, False, True, True, False, True, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (75, "2022-08-13 09:00:00", 75, 2);

insert into app_room_tag (room_id, tag_id) values (75, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (76, 37.60610121006067, 127.10139129611353, "서울 중랑구 신내동 418-29", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 105000000, 700000, 30000, 9, 16.7, "1.5", "L", True,False, False, False, True, False, False, True, False, False, True, True, False, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (76, "2022-08-13 09:00:00", 76, 3);

insert into app_room_tag (room_id, tag_id) values (76, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (77, 37.526574727812154, 127.02505077327415, "서울특별시 강남구 압구정로 151", "이집저집 공인중개사", "2022-03-23", "010-0000-0000", "J", 178000000, 0, 70000, 4, 26.3, "1.5", "K", False,False, False, True, True, True, True, True, False, True, True, True, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (77, "2022-08-13 09:00:00", 77, 3);

insert into app_room_tag (room_id, tag_id) values (77, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (78, 37.403716864802234, 126.94693983193127, "경기도 안양시 동안구 운곡로 23", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 20000000, 1000000, 10000, 1, 23.2, "2", "L", True,True, True, True, False, False, False, True, False, True, False, True, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (78, "2022-08-13 09:00:00", 78, 2);

insert into app_room_tag (room_id, tag_id) values (78, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (79, 37.398305600524694, 127.09675116265595, "경기 성남시 분당구 판교동 533", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 142000000, 1500000, 30000, 5, 27.7, "1.5", "K", True,True, False, False, False, False, True, False, True, False, True, False, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (79, "2022-08-13 09:00:00", 79, 3);

insert into app_room_tag (room_id, tag_id) values (79, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (80, 37.44414668900497, 127.19837278807056, "경기 광주시 목현동 산 97", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 25000000, 1100000, 10000, 7, 18.5, "2", "O", True,False, False, True, False, True, False, True, False, False, True, False, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (80, "2022-08-13 09:00:00", 80, 1);

insert into app_room_tag (room_id, tag_id) values (80, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (81, 37.376098457230505, 127.09878344496126, "경기 성남시 분당구 궁내동 304-4", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 72000000, 700000, 10000, 3, 27.8, "2", "O", True,True, True, True, False, False, False, True, True, True, False, False, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (81, "2022-08-13 09:00:00", 81, 1);

insert into app_room_tag (room_id, tag_id) values (81, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (82, 37.6449873333176, 127.20516869296442, "경기 남양주시 진건읍 송능리 산 78", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "J", 99000000, 0, 80000, 8, 21.1, "3", "O", False,True, False, False, False, False, False, False, False, True, True, False, False, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (82, "2022-08-13 09:00:00", 82, 2);

insert into app_room_tag (room_id, tag_id) values (82, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (83, 37.683327768039184, 126.98310550091266, "경기 고양시 덕양구 효자동 산 1-3", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "M", 33000000, 300000, 20000, 1, 13.4, "3", "K", True,True, True, True, False, False, False, False, True, True, False, False, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (83, "2022-08-13 09:00:00", 83, 1);

insert into app_room_tag (room_id, tag_id) values (83, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (84, 37.553447402346414, 127.14369186033122, "서울 강동구 명일동 306-8", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "J", 168000000, 0, 10000, 2, 21.6, "3", "KV", False,False, False, False, True, False, True, False, True, False, False, False, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (84, "2022-08-13 09:00:00", 84, 2);

insert into app_room_tag (room_id, tag_id) values (84, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (85, 37.59861329626699, 127.21935777452333, "경기 남양주시 와부읍 덕소리 281-2", "해커톤파이팅 공인중개사", "2022-08-22", "010-0000-0000", "M", 160000000, 400000, 60000, 4, 22.8, "2", "V", False,True, True, False, False, False, True, False, True, True, True, False, False, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (85, "2022-08-13 09:00:00", 85, 1);

insert into app_room_tag (room_id, tag_id) values (85, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (86, 37.618894621144655, 126.8638084368654, "경기 고양시 덕양구 도내동 산 74-1", "뚜벅뚜벅 공인중개사", "2022-04-19", "010-0000-0000", "BJ", 164000000, 700000, 70000, 8, 12.4, "2", "O", True,False, True, True, False, True, False, True, False, False, True, True, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (86, "2022-08-13 09:00:00", 86, 1);

insert into app_room_tag (room_id, tag_id) values (86, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (87, 37.48725369838537, 126.97402701152174, "서울특별시 동작구 사당로23길 112", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "J", 92000000, 0, 100000, 2, 29.6, "1", "K", True,True, True, True, True, True, True, False, False, True, False, True, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (87, "2022-08-13 09:00:00", 87, 2);

insert into app_room_tag (room_id, tag_id) values (87, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (88, 37.68287112820024, 126.95567375926949, "경기 고양시 덕양구 지축동 산 10-2", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 24000000, 1100000, 90000, 1, 15.1, "2", "K", False,False, True, True, False, True, False, True, True, False, False, True, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (88, "2022-08-13 09:00:00", 88, 3);

insert into app_room_tag (room_id, tag_id) values (88, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (89, 37.45936024378999, 127.19501010125634, "경기 광주시 남한산성면 검복리 산 72-3", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 13000000, 700000, 100000, 3, 18.0, "3", "KV", False,False, False, False, True, True, True, True, True, True, True, False, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (89, "2022-08-13 09:00:00", 89, 1);

insert into app_room_tag (room_id, tag_id) values (89, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (90, 37.64707078507088, 126.98918648234307, "서울 강북구 우이동 산 68-1", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 75000000, 1000000, 50000, 3, 25.1, "1", "KV", False,True, True, True, True, True, True, True, True, True, False, True, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (90, "2022-08-13 09:00:00", 90, 2);

insert into app_room_tag (room_id, tag_id) values (90, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (91, 37.504020012168326, 127.16678878411496, "경기 하남시 감이동 산 28-16", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "J", 194000000, 0, 50000, 1, 13.3, "1", "V", True,False, False, False, True, False, True, False, False, True, True, True, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (91, "2022-08-13 09:00:00", 91, 1);

insert into app_room_tag (room_id, tag_id) values (91, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (92, 37.629947016092444, 127.22717452366605, "경기 남양주시 금곡동 141-5", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "J", 199000000, 0, 70000, 9, 29.3, "3", "L", True,True, False, False, False, False, True, False, False, False, False, False, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (92, "2022-08-13 09:00:00", 92, 3);

insert into app_room_tag (room_id, tag_id) values (92, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (93, 37.74216547422683, 126.9291613828171, "경기 고양시 덕양구 벽제동 산 1-1", "뚜벅뚜벅 공인중개사", "2022-09-16", "010-0000-0000", "M", 178000000, 700000, 10000, 3, 6.15, "1.5", "V", True,False, True, False, True, False, True, True, True, False, True, False, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (93, "2022-08-13 09:00:00", 93, 1);

insert into app_room_tag (room_id, tag_id) values (93, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (94, 37.70809841737716, 126.98751619987209, "경기 양주시 장흥면 울대리 산 66-11", "뚜벅뚜벅 공인중개사", "2022-09-27", "010-0000-0000", "BJ", 8000000, 1200000, 60000, 6, 21.4, "1", "V", True,True, False, False, False, True, False, False, False, False, True, False, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (94, "2022-08-13 09:00:00", 94, 3);

insert into app_room_tag (room_id, tag_id) values (94, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (95, 37.59033884476004, 127.21798877509165, "경기 남양주시 와부읍 덕소리 187-5", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 49000000, 1500000, 50000, 2, 23.8, "3", "V", False,False, True, False, False, False, False, False, True, True, False, False, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (95, "2022-08-13 09:00:00", 95, 1);

insert into app_room_tag (room_id, tag_id) values (95, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (96, 37.42786521752309, 127.12737606032945, "경기 성남시 중원구 성남동 4932", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "J", 108000000, 0, 90000, 7, 29.8, "1.5", "K", True,False, True, True, False, True, True, False, True, True, True, False, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (96, "2022-08-13 09:00:00", 96, 2);

insert into app_room_tag (room_id, tag_id) values (96, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (97, 37.70722999222941, 126.98129152497049, "경기 양주시 장흥면 교현리 82", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 16000000, 100000, 40000, 2, 11.2, "1", "V", False,False, True, True, False, True, False, True, False, True, True, False, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (97, "2022-08-13 09:00:00", 97, 3);

insert into app_room_tag (room_id, tag_id) values (97, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (98, 37.52261358574995, 126.90082627662308, "서울 영등포구 당산동1가 186-2", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 38000000, 100000, 60000, 2, 5.9, "1", "K", False,False, True, True, False, False, True, True, True, True, False, False, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (98, "2022-08-13 09:00:00", 98, 3);

insert into app_room_tag (room_id, tag_id) values (98, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (99, 37.519072260855225, 127.17171946026578, "경기 하남시 광암동 170", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 72000000, 100000, 40000, 3, 24.7, "2", "O", False,True, True, False, False, False, False, True, True, True, False, True, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (99, "2022-08-13 09:00:00", 99, 1);

insert into app_room_tag (room_id, tag_id) values (99, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (100, 37.37216644478092, 127.12024090707423, "경기도 성남시 분당구 내정로 152", "해커톤파이팅 공인중개사", "2022-02-12", "010-0000-0000", "J", 157000000, 0, 80000, 6, 9.6, "1", "V", False,False, True, False, False, False, False, True, True, False, True, False, False, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (100, "2022-08-13 09:00:00", 100, 1);

insert into app_room_tag (room_id, tag_id) values (100, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (101, 37.700818600959856, 127.06972642826068, "경기 의정부시 장암동 산 172", "뚜벅뚜벅 공인중개사", "2022-05-24", "010-0000-0000", "M", 48000000, 700000, 100000, 8, 11.6, "3", "V", True,False, True, True, False, True, True, False, True, False, True, False, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (101, "2022-08-13 09:00:00", 101, 2);

insert into app_room_tag (room_id, tag_id) values (101, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (102, 37.56145617190431, 127.06176529865832, "서울특별시 성동구 천호대로 386", "해커톤파이팅 공인중개사", "2022-08-29", "010-0000-0000", "M", 62000000, 100000, 60000, 2, 26.6, "1.5", "L", False,True, False, True, True, False, True, True, False, False, True, True, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (102, "2022-08-13 09:00:00", 102, 3);

insert into app_room_tag (room_id, tag_id) values (102, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (103, 37.646707301426645, 127.04010777547342, "서울 도봉구 창동 산 107-223", "뚜벅뚜벅 공인중개사", "2022-04-22", "010-0000-0000", "BJ", 42000000, 500000, 90000, 8, 23.0, "1", "O", False,False, True, False, False, False, False, True, False, False, False, False, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (103, "2022-08-13 09:00:00", 103, 2);

insert into app_room_tag (room_id, tag_id) values (103, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (104, 37.58508238437236, 126.8939426491862, "서울 은평구 수색동 411-12", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "J", 76000000, 0, 90000, 4, 10.5, "1", "V", False,False, True, True, True, True, False, False, True, False, True, False, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (104, "2022-08-13 09:00:00", 104, 1);

insert into app_room_tag (room_id, tag_id) values (104, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (105, 37.54704555677829, 127.14566661427911, "서울 강동구 명일동 343-13", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 74000000, 400000, 80000, 1, 11.8, "2", "O", True,True, False, True, False, False, False, False, False, True, False, False, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (105, "2022-08-13 09:00:00", 105, 2);

insert into app_room_tag (room_id, tag_id) values (105, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (106, 37.47441552485021, 127.2146372206418, "경기 광주시 남한산성면 엄미리 산 198-2", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "M", 17000000, 100000, 90000, 7, 9.6, "1", "K", False,False, False, False, False, False, False, False, False, True, True, False, False, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (106, "2022-08-13 09:00:00", 106, 1);

insert into app_room_tag (room_id, tag_id) values (106, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (107, 37.47510638896749, 127.15894236216431, "경기 하남시 학암동 348", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "J", 9000000, 0, 100000, 4, 21.7, "1.5", "KV", False,True, False, False, False, False, False, True, True, True, True, False, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (107, "2022-08-13 09:00:00", 107, 3);

insert into app_room_tag (room_id, tag_id) values (107, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (108, 37.3939908664648, 126.89543444683973, "경기 안양시 만안구 박달동 192-3", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "M", 161000000, 1100000, 30000, 4, 9.6, "3", "O", True,True, True, True, False, False, False, True, False, True, True, False, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (108, "2022-08-13 09:00:00", 108, 3);

insert into app_room_tag (room_id, tag_id) values (108, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (109, 37.60769732072426, 127.17465582862332, "경기도 남양주시 다산지금로 91", "이집저집 공인중개사", "2022-05-30", "010-0000-0000", "J", 192000000, 0, 50000, 7, 13.8, "1", "KV", True,False, False, True, False, True, False, True, True, True, False, True, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (109, "2022-08-13 09:00:00", 109, 3);

insert into app_room_tag (room_id, tag_id) values (109, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (110, 37.583649341705204, 126.87450174622289, "경기도 고양시 덕양구 제2자유로 33", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 83000000, 300000, 100000, 5, 28.3, "1.5", "V", True,False, True, True, False, True, False, False, True, True, False, False, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (110, "2022-08-13 09:00:00", 110, 1);

insert into app_room_tag (room_id, tag_id) values (110, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (111, 37.65119587876908, 127.20174359592971, "경기 남양주시 진건읍 송능리 산 60-4", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "J", 64000000, 0, 50000, 1, 17.1, "1.5", "V", False,False, False, False, True, True, True, False, True, True, False, True, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (111, "2022-08-13 09:00:00", 111, 3);

insert into app_room_tag (room_id, tag_id) values (111, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (112, 37.65596612860863, 127.05942324038172, "서울특별시 노원구 동일로 1449", "이집저집 공인중개사", "2022-02-25", "010-0000-0000", "M", 88000000, 1200000, 80000, 9, 11.2, "3", "KV", True,True, True, False, True, True, True, False, True, False, True, False, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (112, "2022-08-13 09:00:00", 112, 2);

insert into app_room_tag (room_id, tag_id) values (112, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (113, 37.456255390019294, 127.03486602548122, "경기 과천시 주암동 산 7", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "M", 73000000, 1000000, 60000, 5, 6.4, "1.5", "K", False,False, False, False, False, True, True, False, False, True, False, True, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (113, "2022-08-13 09:00:00", 113, 2);

insert into app_room_tag (room_id, tag_id) values (113, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (114, 37.692018066644344, 126.92452364621217, "경기 양주시 장흥면 삼상리 산 107-5", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "M", 32000000, 1500000, 20000, 6, 23.4, "1", "V", False,True, False, False, True, False, True, True, False, False, False, False, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (114, "2022-08-13 09:00:00", 114, 3);

insert into app_room_tag (room_id, tag_id) values (114, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (115, 37.499843159143715, 127.03890310195563, "서울특별시 강남구 논현로86길 16", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "J", 164000000, 0, 10000, 1, 18.9, "1.5", "L", True,False, False, True, False, True, True, False, False, True, False, False, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (115, "2022-08-13 09:00:00", 115, 3);

insert into app_room_tag (room_id, tag_id) values (115, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (116, 37.622308886783976, 127.03568296705322, "서울특별시 강북구 오현로 117", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "J", 90000000, 0, 90000, 3, 27.7, "1", "O", True,False, True, False, True, True, False, True, False, True, True, False, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (116, "2022-08-13 09:00:00", 116, 1);

insert into app_room_tag (room_id, tag_id) values (116, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (117, 37.5550434436999, 126.96011024415128, "서울특별시 마포구 마포대로 246", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "J", 127000000, 0, 100000, 6, 18.5, "1.5", "L", True,False, False, False, True, False, True, True, True, True, True, True, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (117, "2022-08-13 09:00:00", 117, 2);

insert into app_room_tag (room_id, tag_id) values (117, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (118, 37.46936862411183, 126.88294348328826, "서울 금천구 가산동 340-6", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 17000000, 100000, 70000, 7, 5.8, "3", "L", False,True, False, True, True, True, True, False, True, True, True, False, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (118, "2022-08-13 09:00:00", 118, 2);

insert into app_room_tag (room_id, tag_id) values (118, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (119, 37.47323019370948, 126.88328039330862, "서울특별시 금천구 가산디지털2로 54", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "J", 113000000, 0, 30000, 8, 14.7, "1.5", "L", False,False, True, True, False, True, False, True, True, True, False, False, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (119, "2022-08-13 09:00:00", 119, 2);

insert into app_room_tag (room_id, tag_id) values (119, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (120, 37.69015257735097, 126.88877215676985, "경기 고양시 덕양구 대자동 산 54-10", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "J", 100000000, 0, 20000, 2, 26.0, "2", "KV", True,False, False, True, True, True, True, False, False, False, False, False, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (120, "2022-08-13 09:00:00", 120, 3);

insert into app_room_tag (room_id, tag_id) values (120, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (121, 37.55708142646546, 126.90228695563, "서울 마포구 망원동 421-37", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "J", 41000000, 0, 80000, 6, 5.15, "3", "L", True,False, True, True, False, True, True, False, True, True, False, False, False, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (121, "2022-08-13 09:00:00", 121, 2);

insert into app_room_tag (room_id, tag_id) values (121, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (122, 37.42021438486334, 126.9567995842916, "경기 안양시 동안구 비산동 산 5", "뚜벅뚜벅 공인중개사", "2022-05-24", "010-0000-0000", "BJ", 87000000, 1400000, 50000, 9, 5.15, "3", "L", False,False, True, False, True, False, True, False, False, True, False, False, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (122, "2022-08-13 09:00:00", 122, 2);

insert into app_room_tag (room_id, tag_id) values (122, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (123, 37.68548890340077, 126.87223647598451, "경기 고양시 덕양구 신원동 369-1", "해커톤파이팅 공인중개사", "2022-07-16", "010-0000-0000", "BJ", 6000000, 1400000, 90000, 2, 11.2, "3", "KV", False,False, False, True, True, False, False, True, True, True, True, True, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (123, "2022-08-13 09:00:00", 123, 1);

insert into app_room_tag (room_id, tag_id) values (123, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (124, 37.509447238109466, 127.05262698617558, "서울특별시 강남구 봉은사로68길 49-3", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 2000000, 400000, 70000, 5, 18.8, "1.5", "L", True,True, False, False, False, True, False, False, False, False, True, False, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (124, "2022-08-13 09:00:00", 124, 3);

insert into app_room_tag (room_id, tag_id) values (124, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (125, 37.39737275986995, 127.1172523008169, "경기도 성남시 분당구 동판교로 156", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 192000000, 400000, 60000, 7, 12.1, "1", "K", False,False, True, False, True, True, False, True, True, True, True, True, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (125, "2022-08-13 09:00:00", 125, 2);

insert into app_room_tag (room_id, tag_id) values (125, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (126, 37.73043536865528, 127.05854165351778, "경기도 의정부시 신곡로 36", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "M", 99000000, 200000, 10000, 6, 13.1, "3", "V", True,True, False, True, True, True, False, False, False, True, False, False, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (126, "2022-08-13 09:00:00", 126, 1);

insert into app_room_tag (room_id, tag_id) values (126, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (127, 37.59586230895333, 127.00058703662398, "서울특별시 성북구 선잠로2라길 36", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 89000000, 1300000, 50000, 8, 14.8, "2", "V", False,False, True, False, False, False, False, True, False, True, False, False, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (127, "2022-08-13 09:00:00", 127, 2);

insert into app_room_tag (room_id, tag_id) values (127, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (128, 37.570194710587806, 126.89415646396907, "서울특별시 마포구 증산로 87", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 28000000, 200000, 10000, 7, 6.15, "1.5", "KV", False,True, False, False, False, True, False, False, False, False, True, False, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (128, "2022-08-13 09:00:00", 128, 1);

insert into app_room_tag (room_id, tag_id) values (128, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (129, 37.69447074330685, 126.98404968512246, "경기 양주시 장흥면 교현리 산 25-1", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 19000000, 700000, 70000, 8, 20.3, "3", "V", False,False, False, False, True, False, True, False, False, False, True, True, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (129, "2022-08-13 09:00:00", 129, 2);

insert into app_room_tag (room_id, tag_id) values (129, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (130, 37.44645352964768, 127.09783296614296, "경기 성남시 수정구 심곡동 산 62", "해커톤파이팅 공인중개사", "2022-05-14", "010-0000-0000", "J", 151000000, 0, 40000, 6, 12.9, "1.5", "K", False,True, True, True, True, False, False, True, True, False, True, True, False, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (130, "2022-08-13 09:00:00", 130, 1);

insert into app_room_tag (room_id, tag_id) values (130, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (131, 37.561950700910046, 127.09838637085288, "서울 광진구 중곡동 143-127", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 137000000, 500000, 20000, 4, 23.2, "2", "L", True,True, False, False, False, True, True, True, False, False, False, True, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (131, "2022-08-13 09:00:00", 131, 3);

insert into app_room_tag (room_id, tag_id) values (131, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (132, 37.556588673087866, 127.11815676122391, "서울 강동구 암사동 661", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 25000000, 800000, 100000, 2, 29.1, "1.5", "O", True,False, True, True, False, False, False, True, False, False, False, True, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (132, "2022-08-13 09:00:00", 132, 1);

insert into app_room_tag (room_id, tag_id) values (132, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (133, 37.70033658358988, 126.86149762905944, "경기 고양시 덕양구 관산동 451", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "J", 127000000, 0, 20000, 8, 19.2, "1", "V", False,False, True, True, True, True, False, True, True, False, True, True, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (133, "2022-08-13 09:00:00", 133, 1);

insert into app_room_tag (room_id, tag_id) values (133, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (134, 37.42573868305293, 127.14470291701325, "경기 성남시 중원구 하대원동 389-2", "해커톤파이팅 공인중개사", "2022-06-27", "010-0000-0000", "J", 115000000, 0, 20000, 9, 7.7, "2", "K", True,False, False, False, False, False, False, True, True, False, True, False, False, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (134, "2022-08-13 09:00:00", 134, 1);

insert into app_room_tag (room_id, tag_id) values (134, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (135, 37.625218221995596, 127.15657761592337, "경기 남양주시 다산동 6051", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "M", 28000000, 1500000, 20000, 4, 6.5, "1", "K", False,True, False, True, True, True, True, True, True, False, True, True, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (135, "2022-08-13 09:00:00", 135, 1);

insert into app_room_tag (room_id, tag_id) values (135, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (136, 37.66767336361121, 126.92841792435534, "경기 고양시 덕양구 오금동 2-1", "뚜벅뚜벅 공인중개사", "2022-01-29", "010-0000-0000", "M", 63000000, 1200000, 20000, 4, 11.3, "1", "K", True,True, False, False, True, True, False, False, True, False, False, False, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (136, "2022-08-13 09:00:00", 136, 3);

insert into app_room_tag (room_id, tag_id) values (136, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (137, 37.648806840903354, 127.13324093012424, "경기 남양주시 퇴계원읍 퇴계원리 산 73", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "J", 67000000, 0, 40000, 7, 13.0, "1.5", "O", False,True, False, True, False, True, False, True, True, False, True, True, True, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (137, "2022-08-13 09:00:00", 137, 1);

insert into app_room_tag (room_id, tag_id) values (137, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (138, 37.72573141594897, 127.13955637264634, "경기 남양주시 별내면 용암리 53-2", "해커톤파이팅 공인중개사", "2022-05-12", "010-0000-0000", "J", 165000000, 0, 20000, 8, 6.65, "1.5", "K", False,True, True, False, True, True, True, True, True, False, False, True, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (138, "2022-08-13 09:00:00", 138, 2);

insert into app_room_tag (room_id, tag_id) values (138, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (139, 37.51089056103488, 126.91873352398417, "서울 영등포구 신길동 119-27", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "M", 105000000, 700000, 60000, 2, 15.9, "2", "K", True,False, False, True, True, False, True, False, True, False, False, True, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (139, "2022-08-13 09:00:00", 139, 1);

insert into app_room_tag (room_id, tag_id) values (139, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (140, 37.43770909785382, 127.14512680421569, "경기 성남시 중원구 성남동 2791", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 152000000, 1400000, 100000, 5, 10.0, "1", "V", False,False, False, True, True, False, True, True, True, True, True, False, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (140, "2022-08-13 09:00:00", 140, 2);

insert into app_room_tag (room_id, tag_id) values (140, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (141, 37.597114237984286, 126.91379103868626, "서울특별시 은평구 증산로21가길 14-1", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "J", 123000000, 0, 90000, 1, 18.8, "1", "V", False,False, True, True, False, False, False, True, False, False, False, False, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (141, "2022-08-13 09:00:00", 141, 3);

insert into app_room_tag (room_id, tag_id) values (141, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (142, 37.6992445738161, 127.1458663451166, "경기 남양주시 진접읍 내각리 산 56-21", "뚜벅뚜벅 공인중개사", "2022-09-29", "010-0000-0000", "J", 84000000, 0, 60000, 2, 18.0, "3", "K", False,False, False, False, False, True, True, False, True, True, False, False, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (142, "2022-08-13 09:00:00", 142, 2);

insert into app_room_tag (room_id, tag_id) values (142, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (143, 37.48317816349746, 126.91184667201458, "서울 관악구 신림동 541", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 44000000, 1200000, 80000, 7, 8.3, "3", "V", True,True, False, True, True, True, True, True, False, False, True, False, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (143, "2022-08-13 09:00:00", 143, 1);

insert into app_room_tag (room_id, tag_id) values (143, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (144, 37.71832087724562, 126.89753453554445, "경기 고양시 덕양구 벽제동 335-1", "뚜벅뚜벅 공인중개사", "2022-09-24", "010-0000-0000", "BJ", 34000000, 1500000, 70000, 9, 27.6, "1.5", "V", False,True, True, True, True, True, True, False, True, False, False, True, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (144, "2022-08-13 09:00:00", 144, 1);

insert into app_room_tag (room_id, tag_id) values (144, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (145, 37.717527632723055, 127.0128216616726, "경기 양주시 장흥면 울대리 산 52-1", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "M", 145000000, 800000, 50000, 8, 27.9, "3", "KV", False,False, True, True, False, False, False, True, True, True, True, False, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (145, "2022-08-13 09:00:00", 145, 3);

insert into app_room_tag (room_id, tag_id) values (145, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (146, 37.4200266563787, 126.92445635330972, "경기 안양시 만안구 석수동 823", "뚜벅뚜벅 공인중개사", "2022-08-18", "010-0000-0000", "J", 96000000, 0, 90000, 5, 18.7, "2", "L", True,True, True, True, True, False, True, False, False, False, False, True, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (146, "2022-08-13 09:00:00", 146, 3);

insert into app_room_tag (room_id, tag_id) values (146, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (147, 37.37602503242774, 126.93041424529831, "경기 군포시 산본동 1057", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "M", 151000000, 300000, 20000, 6, 19.0, "2", "K", False,False, True, True, True, True, False, True, True, False, True, True, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (147, "2022-08-13 09:00:00", 147, 3);

insert into app_room_tag (room_id, tag_id) values (147, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (148, 37.55969064785884, 127.01347943720944, "서울특별시 중구 청구로 지하 77", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 132000000, 1000000, 90000, 6, 5.7, "1", "KV", False,True, True, True, True, True, True, False, False, False, False, True, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (148, "2022-08-13 09:00:00", 148, 2);

insert into app_room_tag (room_id, tag_id) values (148, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (149, 37.5403665616103, 126.90364764392938, "서울 영등포구 당산동 100", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 139000000, 1300000, 70000, 4, 21.2, "1.5", "KV", False,False, False, True, False, False, True, True, False, True, True, False, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (149, "2022-08-13 09:00:00", 149, 1);

insert into app_room_tag (room_id, tag_id) values (149, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (150, 37.503975830179556, 127.15349369064708, "경기도 하남시 감일중앙로 20", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 62000000, 1400000, 50000, 2, 22.3, "1.5", "V", True,False, False, False, False, False, True, False, False, False, True, False, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (150, "2022-08-13 09:00:00", 150, 3);

insert into app_room_tag (room_id, tag_id) values (150, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (151, 37.47079467791693, 127.01999310542142, "서울 서초구 우면동 산 20-2", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 187000000, 300000, 20000, 3, 28.4, "1.5", "V", True,True, False, True, False, True, True, True, False, False, False, True, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (151, "2022-08-13 09:00:00", 151, 3);

insert into app_room_tag (room_id, tag_id) values (151, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (152, 37.69563219384142, 127.05177203807408, "경기 의정부시 장암동 336", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 10000000, 1100000, 60000, 4, 25.6, "3", "V", False,True, False, False, False, True, False, False, True, False, True, True, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (152, "2022-08-13 09:00:00", 152, 2);

insert into app_room_tag (room_id, tag_id) values (152, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (153, 37.535653778105434, 126.89676241231395, "서울특별시 영등포구 선유로 255", "이집저집 공인중개사", "2022-08-19", "010-0000-0000", "BJ", 185000000, 600000, 10000, 4, 24.7, "2", "V", True,True, False, False, False, False, False, False, True, True, True, True, False, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (153, "2022-08-13 09:00:00", 153, 1);

insert into app_room_tag (room_id, tag_id) values (153, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (154, 37.40908628439909, 126.86777822449214, "경기 광명시 가학동 845-1", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "J", 102000000, 0, 90000, 9, 25.6, "2", "L", False,True, True, True, False, True, False, True, False, False, False, True, False, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (154, "2022-08-13 09:00:00", 154, 1);

insert into app_room_tag (room_id, tag_id) values (154, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (155, 37.70042084669338, 127.14448018827892, "경기 남양주시 진접읍 내각리 산 56-21", "뚜벅뚜벅 공인중개사", "2022-09-18", "010-0000-0000", "BJ", 130000000, 200000, 50000, 4, 6.9, "3", "KV", True,True, False, True, True, True, True, False, True, False, False, True, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (155, "2022-08-13 09:00:00", 155, 3);

insert into app_room_tag (room_id, tag_id) values (155, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (156, 37.411634043095525, 126.9496320283529, "경기 안양시 동안구 비산동 20", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 16000000, 900000, 70000, 7, 27.5, "2", "K", True,False, True, True, False, False, False, True, True, True, True, True, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (156, "2022-08-13 09:00:00", 156, 1);

insert into app_room_tag (room_id, tag_id) values (156, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (157, 37.416912071209076, 127.1109139058057, "경기 성남시 수정구 사송동 695-2", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "J", 161000000, 0, 90000, 3, 25.8, "3", "KV", True,True, False, False, False, False, False, False, False, False, True, False, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (157, "2022-08-13 09:00:00", 157, 3);

insert into app_room_tag (room_id, tag_id) values (157, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (158, 37.43647193087291, 127.20118959760383, "경기 광주시 목현동 785", "뚜벅뚜벅 공인중개사", "2022-05-19", "010-0000-0000", "M", 91000000, 1200000, 20000, 6, 20.0, "1.5", "K", True,False, False, True, False, True, False, True, False, True, False, True, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (158, "2022-08-13 09:00:00", 158, 2);

insert into app_room_tag (room_id, tag_id) values (158, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (159, 37.3971437264497, 126.89315156110405, "경기 안양시 만안구 박달동 544", "뚜벅뚜벅 공인중개사", "2022-06-28", "010-0000-0000", "M", 101000000, 1200000, 80000, 5, 16.0, "2", "L", True,True, True, False, True, True, False, True, True, False, True, False, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (159, "2022-08-13 09:00:00", 159, 1);

insert into app_room_tag (room_id, tag_id) values (159, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (160, 37.395491683166874, 127.01955452969646, "경기 의왕시 청계동 277", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 45000000, 300000, 10000, 1, 5.15, "3", "V", True,True, True, False, True, True, True, False, False, True, False, False, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (160, "2022-08-13 09:00:00", 160, 3);

insert into app_room_tag (room_id, tag_id) values (160, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (161, 37.60375145783, 127.13542006720358, "경기 구리시 인창동 575-24", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "M", 175000000, 200000, 10000, 8, 25.4, "1", "KV", True,True, True, False, False, False, True, False, True, True, False, False, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (161, "2022-08-13 09:00:00", 161, 3);

insert into app_room_tag (room_id, tag_id) values (161, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (162, 37.61639511757064, 126.92435828744057, "서울 은평구 불광동 290-14", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 78000000, 1200000, 100000, 5, 7.3, "3", "L", True,False, True, True, True, True, True, False, True, False, True, False, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (162, "2022-08-13 09:00:00", 162, 2);

insert into app_room_tag (room_id, tag_id) values (162, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (163, 37.635138268702754, 127.14825420025701, "경기 구리시 사노동 38-1", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "J", 97000000, 0, 30000, 3, 18.1, "3", "O", True,False, False, False, True, False, True, True, False, False, True, False, False, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (163, "2022-08-13 09:00:00", 163, 3);

insert into app_room_tag (room_id, tag_id) values (163, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (164, 37.59101390664788, 126.96015953956255, "서울 종로구 부암동 359-9", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 51000000, 900000, 80000, 1, 21.5, "1.5", "KV", True,False, True, False, False, True, True, True, False, False, True, False, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (164, "2022-08-13 09:00:00", 164, 1);

insert into app_room_tag (room_id, tag_id) values (164, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (165, 37.57252834796284, 127.18192718809017, "경기 하남시 선동 447", "뚜벅뚜벅 공인중개사", "2022-07-25", "010-0000-0000", "J", 25000000, 0, 90000, 4, 16.1, "3", "KV", False,False, False, False, False, False, False, False, True, False, True, False, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (165, "2022-08-13 09:00:00", 165, 3);

insert into app_room_tag (room_id, tag_id) values (165, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (166, 37.402575902512346, 126.91524339122873, "경기 안양시 만안구 안양동 695-5", "이집저집 공인중개사", "2022-08-23", "010-0000-0000", "M", 77000000, 1300000, 60000, 8, 26.2, "2", "O", True,False, True, True, False, False, True, False, False, True, True, False, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (166, "2022-08-13 09:00:00", 166, 1);

insert into app_room_tag (room_id, tag_id) values (166, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (167, 37.50824341783184, 127.2271027026067, "경기 하남시 하산곡동 322-1", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "J", 33000000, 0, 50000, 1, 12.5, "1.5", "O", False,True, True, False, False, False, True, False, False, True, True, True, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (167, "2022-08-13 09:00:00", 167, 2);

insert into app_room_tag (room_id, tag_id) values (167, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (168, 37.68627273954765, 126.88859392226637, "경기 고양시 덕양구 대자동 산 166-1", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 4000000, 1000000, 80000, 9, 25.6, "1.5", "O", False,False, True, False, True, True, False, False, False, False, False, False, True, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (168, "2022-08-13 09:00:00", 168, 2);

insert into app_room_tag (room_id, tag_id) values (168, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (169, 37.49666214699494, 127.20964746356529, "경기 하남시 하산곡동 산 48-1", "이집저집 공인중개사", "2022-05-15", "010-0000-0000", "M", 53000000, 1200000, 20000, 3, 7.15, "3", "O", False,False, False, False, True, True, False, False, False, False, False, False, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (169, "2022-08-13 09:00:00", 169, 1);

insert into app_room_tag (room_id, tag_id) values (169, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (170, 37.4583233034089, 127.0239746072615, "서울특별시 서초구 양재대로2길 33", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "J", 158000000, 0, 100000, 9, 24.3, "1.5", "KV", True,False, False, True, True, False, False, False, True, False, False, False, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (170, "2022-08-13 09:00:00", 170, 3);

insert into app_room_tag (room_id, tag_id) values (170, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (171, 37.71451824106971, 126.95709485982216, "경기 양주시 장흥면 부곡리 산 106-15", "이집저집 공인중개사", "2022-07-21", "010-0000-0000", "J", 135000000, 0, 50000, 8, 28.6, "1", "V", False,False, False, True, True, True, False, False, False, False, True, False, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (171, "2022-08-13 09:00:00", 171, 2);

insert into app_room_tag (room_id, tag_id) values (171, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (172, 37.445146909979734, 127.17064292884642, "경기 성남시 중원구 금광동 2449-1", "이집저집 공인중개사", "2022-07-14", "010-0000-0000", "J", 76000000, 0, 100000, 7, 7.5, "2", "L", True,True, True, True, True, False, False, True, False, False, False, True, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (172, "2022-08-13 09:00:00", 172, 2);

insert into app_room_tag (room_id, tag_id) values (172, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (173, 37.670758179995694, 127.00202424891943, "서울 강북구 우이동 산 68-1", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 3000000, 100000, 60000, 1, 25.6, "2", "O", False,True, False, True, False, True, False, True, True, True, True, False, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (173, "2022-08-13 09:00:00", 173, 3);

insert into app_room_tag (room_id, tag_id) values (173, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (174, 37.55995765438344, 127.07377235530643, "서울 광진구 중곡동 611-7", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "M", 183000000, 600000, 100000, 2, 16.5, "2", "L", True,True, True, True, True, True, False, True, True, False, True, False, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (174, "2022-08-13 09:00:00", 174, 2);

insert into app_room_tag (room_id, tag_id) values (174, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (175, 37.509364509056354, 126.87187933516825, "서울 양천구 신정동 330-14", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 36000000, 600000, 80000, 7, 27.5, "3", "L", True,True, True, True, True, False, False, False, True, False, False, True, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (175, "2022-08-13 09:00:00", 175, 2);

insert into app_room_tag (room_id, tag_id) values (175, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (176, 37.40150556854239, 126.96677175542335, "경기도 안양시 동안구 학의로 268", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "J", 121000000, 0, 100000, 7, 18.1, "2", "KV", False,False, False, False, False, False, True, False, False, True, False, False, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (176, "2022-08-13 09:00:00", 176, 1);

insert into app_room_tag (room_id, tag_id) values (176, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (177, 37.58990711542212, 126.99096655538378, "서울특별시 종로구 성균관로 25-2", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "J", 154000000, 0, 40000, 3, 13.8, "1.5", "L", True,False, False, False, True, True, True, True, False, True, True, False, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (177, "2022-08-13 09:00:00", 177, 3);

insert into app_room_tag (room_id, tag_id) values (177, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (178, 37.4421644420431, 126.94929433209708, "서울 관악구 신림동 산 56-2", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "J", 166000000, 0, 60000, 7, 11.8, "2", "K", False,False, False, False, False, False, False, False, True, False, False, True, False, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (178, "2022-08-13 09:00:00", 178, 3);

insert into app_room_tag (room_id, tag_id) values (178, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (179, 37.48916694639606, 127.12361358310609, "서울특별시 송파구 문정로1길 34", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 142000000, 200000, 40000, 7, 8.3, "3", "O", False,True, True, False, True, True, True, False, True, False, False, True, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (179, "2022-08-13 09:00:00", 179, 3);

insert into app_room_tag (room_id, tag_id) values (179, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (180, 37.44393379689938, 126.89954470978532, "서울특별시 금천구 시흥대로 97", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 183000000, 800000, 30000, 2, 22.2, "2", "O", False,False, True, False, False, True, True, True, True, True, True, True, True, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (180, "2022-08-13 09:00:00", 180, 2);

insert into app_room_tag (room_id, tag_id) values (180, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (181, 37.63424998913512, 127.00561890453103, "서울 강북구 수유동 산 128", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 178000000, 100000, 20000, 9, 23.9, "1", "O", True,False, False, True, True, True, False, True, True, True, False, False, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (181, "2022-08-13 09:00:00", 181, 3);

insert into app_room_tag (room_id, tag_id) values (181, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (182, 37.661646849730786, 126.87701344621023, "경기도 고양시 덕양구 신원2로 57", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "M", 145000000, 1000000, 50000, 2, 7.5, "3", "O", True,False, False, True, True, True, False, True, False, True, True, True, False, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (182, "2022-08-13 09:00:00", 182, 1);

insert into app_room_tag (room_id, tag_id) values (182, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (183, 37.69138026974004, 127.02987126637319, "서울 도봉구 도봉동 산 31", "해커톤파이팅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 65000000, 300000, 70000, 7, 25.1, "2", "L", True,True, False, True, False, False, True, True, False, False, False, True, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (183, "2022-08-13 09:00:00", 183, 1);

insert into app_room_tag (room_id, tag_id) values (183, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (184, 37.47821598541769, 127.16063532802599, "경기 하남시 학암동 산 30", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "J", 182000000, 0, 70000, 2, 26.4, "1.5", "O", False,True, True, True, False, True, False, False, False, False, True, True, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (184, "2022-08-13 09:00:00", 184, 1);

insert into app_room_tag (room_id, tag_id) values (184, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (185, 37.55539160350907, 127.01853221585462, "서울특별시 성동구 금호로 173", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "J", 174000000, 0, 70000, 4, 25.3, "2", "KV", True,True, False, False, True, True, False, True, False, True, False, False, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (185, "2022-08-13 09:00:00", 185, 3);

insert into app_room_tag (room_id, tag_id) values (185, 4);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (186, 37.67028052714385, 127.20204757724501, "경기도 남양주시 진건읍 진건오남로390번길 26-6", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "M", 159000000, 400000, 20000, 3, 5.7, "2", "V", False,False, False, True, True, True, False, True, False, True, True, True, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (186, "2022-08-13 09:00:00", 186, 3);

insert into app_room_tag (room_id, tag_id) values (186, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (187, 37.489856013160434, 127.06528827320533, "서울 강남구 개포동 648-1", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "M", 81000000, 1200000, 100000, 3, 26.7, "1", "K", False,True, False, True, True, False, True, True, True, True, True, False, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (187, "2022-08-13 09:00:00", 187, 3);

insert into app_room_tag (room_id, tag_id) values (187, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (188, 37.649166321404905, 127.11673359514745, "경기도 남양주시 별내4로 63", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "M", 58000000, 1400000, 40000, 2, 17.1, "3", "L", True,False, True, True, False, True, True, False, True, True, False, True, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (188, "2022-08-13 09:00:00", 188, 2);

insert into app_room_tag (room_id, tag_id) values (188, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (189, 37.72345744610606, 126.85569590736787, "경기도 고양시 덕양구 통일로1170번길 175", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "M", 9000000, 1200000, 20000, 5, 9.4, "3", "O", True,False, False, True, True, True, True, True, False, True, False, True, False, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (189, "2022-08-13 09:00:00", 189, 3);

insert into app_room_tag (room_id, tag_id) values (189, 7);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (190, 37.637289564826624, 127.03180271879144, "서울특별시 강북구 한천로124가길 11", "뚜벅뚜벅 공인중개사", "2022-03-11", "010-0000-0000", "BJ", 9000000, 500000, 90000, 7, 11.7, "1.5", "O", False,False, True, True, False, True, False, False, False, True, True, True, False, True, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (190, "2022-08-13 09:00:00", 190, 2);

insert into app_room_tag (room_id, tag_id) values (190, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (191, 37.62110415853491, 127.07146826614948, "서울 노원구 공릉동 605-6", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "M", 126000000, 900000, 70000, 3, 14.8, "1", "L", True,True, False, False, False, False, False, False, False, False, True, False, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (191, "2022-08-13 09:00:00", 191, 1);

insert into app_room_tag (room_id, tag_id) values (191, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (192, 37.65385239467584, 127.14339577186281, "경기 남양주시 퇴계원읍 퇴계원리 102-30", "이집저집 공인중개사", "문의조정가능", "010-0000-0000", "M", 97000000, 400000, 60000, 3, 17.2, "1", "KV", True,False, False, True, True, False, True, False, True, True, True, True, True, False, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (192, "2022-08-13 09:00:00", 192, 2);

insert into app_room_tag (room_id, tag_id) values (192, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (193, 37.47845006716126, 126.91059359766565, "서울특별시 관악구 남부순환로 1430", "뚜벅뚜벅 공인중개사", "2022-07-26", "010-0000-0000", "M", 166000000, 1000000, 60000, 7, 23.4, "1.5", "O", False,False, True, False, False, False, True, True, True, True, False, False, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (193, "2022-08-13 09:00:00", 193, 1);

insert into app_room_tag (room_id, tag_id) values (193, 3);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (194, 37.68667145997068, 126.8870674538563, "경기 고양시 덕양구 대자동 산 151", "이집저집 공인중개사", "바로입주가능", "010-0000-0000", "M", 157000000, 500000, 90000, 8, 23.0, "2", "V", False,False, True, True, True, False, True, False, True, False, True, False, True, True, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (194, "2022-08-13 09:00:00", 194, 2);

insert into app_room_tag (room_id, tag_id) values (194, 1);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (195, 37.69241168328818, 127.02950600312037, "서울 도봉구 도봉동 산 31", "뚜벅뚜벅 공인중개사", "2022-07-19", "010-0000-0000", "BJ", 52000000, 1500000, 60000, 2, 7.0, "1.5", "KV", False,True, True, False, True, False, True, False, False, True, False, False, True, False, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (195, "2022-08-13 09:00:00", 195, 2);

insert into app_room_tag (room_id, tag_id) values (195, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (196, 37.683991466588935, 126.8788317261812, "경기 고양시 덕양구 신원동 333-1", "이집저집 공인중개사", "2022-06-12", "010-0000-0000", "M", 91000000, 1100000, 80000, 3, 5.0, "1", "V", True,False, True, False, True, False, True, False, False, True, False, True, True, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (196, "2022-08-13 09:00:00", 196, 1);

insert into app_room_tag (room_id, tag_id) values (196, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (197, 37.40309379369439, 127.18202039437331, "경기 광주시 직동 산 26-6", "뚜벅뚜벅 공인중개사", "2022-04-12", "010-0000-0000", "M", 121000000, 1400000, 100000, 8, 21.3, "2", "V", False,False, True, False, True, False, True, True, True, True, False, False, False, True, False, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (197, "2022-08-13 09:00:00", 197, 1);

insert into app_room_tag (room_id, tag_id) values (197, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (198, 37.43440496988395, 127.19056691494472, "경기 성남시 중원구 상대원동 산 53-2", "이집저집 공인중개사", "2022-06-12", "010-0000-0000", "J", 164000000, 0, 30000, 2, 9.6, "1", "V", True,False, True, True, False, False, False, True, False, True, False, True, False, True, True, True);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (198, "2022-08-13 09:00:00", 198, 1);

insert into app_room_tag (room_id, tag_id) values (198, 6);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (199, 37.51249249852663, 126.980006544327, "서울 용산구 이촌동 354", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "M", 74000000, 1400000, 20000, 5, 6.15, "2", "L", True,True, False, True, False, False, True, False, True, False, True, False, True, False, False, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (199, "2022-08-13 09:00:00", 199, 3);

insert into app_room_tag (room_id, tag_id) values (199, 5);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (200, 37.50570122974329, 127.1509578061472, "경기 하남시 감일동 산 59-50", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 142000000, 600000, 40000, 9, 7.3, "1", "L", True,True, True, False, False, False, True, True, False, True, False, True, False, False, True, False);

insert into app_room (room_id, room_created_at, roomInfo_id, brokerAgency_id) values (200, "2022-08-13 09:00:00", 200, 1);

insert into app_room_tag (room_id, tag_id) values (200, 2);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (201, 37.55969064785884, 127.01347943720944, "서울특별시 중구 청구로 지하 77", "뚜벅뚜벅 공인중개사", "바로입주가능", "010-0000-0000", "BJ", 132000000, 1000000, 90000, 6, 5.7, "1", "KV", False,True, True, True, True, True, True, False, False, False, False, True, True, False, True, False);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (202, 37.51019357188079, 127.11093412599618, "서울특별시 송파구 백제고분로45길 8-21", "해커톤파이팅 공인중개사", "바로입주가능", "010-0000-0000", "M", 179000000, 1500000, 50000, 6, 21.3, "2", "L", False,False, True, False, False, True, True, True, False, True, False, False, False, True, True, False);

insert into app_roominfo (roominfo_id, basicInfo_location_x, basicInfo_location_y, basicInfo_address, basicInfo_brokerAgency, basicInfo_move_in_date, basicInfo_brokerAgency_contact, basicInfo_room_type, basicInfo_deposit, basicInfo_monthly_rent, basicInfo_maintenance_fee, basicInfo_floor, basicInfo_area, basicInfo_number_of_rooms, basicInfo_interior_structure, option_gas_stove, option_induction, option_microwave, option_refrigerator, option_washing_machine, option_air_conditioner, option_internet, option_tv, option_wifi, option_closet, option_cabinet, option_shoe_rack, option_bed, option_desk, option_chair, option_drying_rack) values (203, 37.544826809314024, 126.94810403195828, "서울특별시 마포구 백범로 152", "뚜벅뚜벅 공인중개사", "문의조정가능", "010-0000-0000", "BJ", 54000000, 1400000, 60000, 5, 27.7, "1.5", "V", True,False, True, True, False, True, True, False, False, False, False, False, True, False, True, False);


-- Interest

insert into app_interest (interest_id, room_id, user_id) values (1, 1, 1);

insert into app_interest (interest_id, room_id, user_id) values (2, 3, 1);

insert into app_interest (interest_id, room_id, user_id) values (3, 6, 1);



-- Checklist

insert into app_checklist (checklist_id, roomInfo_id, is_confirmed, room_id, user_id) values (1, 201, False, 148, 1);

insert into app_checklist (checklist_id, roomInfo_id, is_confirmed, room_id, user_id) values (2, 202, True, 42, 1);

insert into app_checklist (checklist_id, roomInfo_id, is_confirmed, user_id) values (3, 203, True, 1);
