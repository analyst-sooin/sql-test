CREATE TABLE mst_users(
    user_id         varchar(255)
  , register_date   varchar(255)
  , register_device integer
);

use sql_test;


show tables;

INSERT INTO mst_users
VALUES
    ('U001', '2016-08-26', 1)
  , ('U002', '2016-08-26', 2)
  , ('U003', '2016-08-27', 3)
;

select user_id, case
when register_device = 1 then '키보드'
when register_device = 2 then '마우스'
when register_device = 3 then '입력장치'
end as device_type
from mst_users;

select user_id, case
when device_name = '데스크톱' then '키보드'
when device_name = '스마트폰' then '마우스'
when device_name = '애플리케이션' then '입력장치'
end as device_type
from mst_users;

select * from mst_users;
