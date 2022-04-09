-- Delete Table If Exists
DROP TABLE IF EXISTS tb_book ;

-- Create Table

CREATE TABLE db_car.tb_book ( 
    id INT NOT NULL AUTO_INCREMENT COMMENT 'PK' , 
    name VARCHAR(50) NOT NULL COMMENT 'ชื่อผู้จอง' , 
    surname VARCHAR(50) NOT NULL COMMENT 'นามสกุลผู้จอง' , 
    p_id INT NOT NULL COMMENT 'ID ตำแหน่ง' , 
    d_id INT NOT NULL COMMENT 'ID สังกัด' , 
    date_register DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'วันที่กรอกข้อมูล' , 
    start_date DATE NOT NULL COMMENT 'วันที่ใช้รถ' ,
    start_time TIME NOT NULL COMMENT 'เริ่มเวลา', 
    end_date DATE NOT NULL COMMENT 'ถึงวันที่' , 
    end_time TIME NOT NULL COMMENT 'ถึงเวลา', 
    origin VARCHAR(255) NOT NULL COMMENT 'ต้นทาง' , 
    destination VARCHAR(255) NOT NULL COMMENT 'ปลายทาง' , 
    title VARCHAR(255) NOT NULL COMMENT 'เหตุผลขอใช้รถ' , 
    count INT NOT NULL COMMENT 'จำนวนผู้โดยสาร' , 
    list TEXT NULL COMMENT 'รายละเอียดการรับส่ง' , 
    ch_id INT NOT NULL COMMENT 'ID ตัวเลือกรับส่ง' , 
    c_id INT NOT NULL COMMENT 'ID ประเภทรถ' , 
    remark TEXT NOT NULL COMMENT 'รายละเอียดการรับส่ง' , 
    user_add VARCHAR(50) NULL COMMENT 'USER ผู้กรอกข้อมูล' , 
    PRIMARY KEY (id)
) ENGINE = InnoDB;


INSERT INTO tb_book (
    id, 
    name, 
    surname, 
    p_id, 
    d_id, 
    date_register, 
    start_date,
    start_time, 
    end_date, 
    end_time,
    origin, 
    destination, 
    title, 
    count,
    list, 
    ch_id, 
    c_id, 
    remark, 
    user_add
) VALUES (
    NULL, 
    'จามร',
    'เพ็งสวย', 
    '1', 
    '1', 
    current_timestamp(), 
    '2022-03-31',
    '14:07:26', 
    '2022-03-31',
    '16:00:26', 
    'คณะวิทยาศาสตร์', 
    'สุพรรณบุรี', 
    'ไปอบรม', 
    '1', 
    '1.จามร เพ็งสวย'
    '1', 
    '1', 
    'ไปส่งแล้วกลับมารับวันที่ 11 เมษายน 2565', 
    'user1'
);


-- CREATE TABLE db_car.tb_books ( 
--     id INT NOT NULL AUTO_INCREMENT COMMENT 'PK' , 
--     title VARCHAR(255) NOT NULL COMMENT 'สถานที่ไป' , 
--     name VARCHAR(50) NOT NULL COMMENT 'ชื่อผู้จอง' , 
--     t_id INT NOT NULL COMMENT 'ประเภทรถ' , 
--     count VARCHAR(50) NOT NULL COMMENT 'จำนวนตนที่ไป' , 
--     start_date DATETIME NOT NULL COMMENT 'วันที่ไป' , 
--     end_date DATETIME NOT NULL COMMENT 'วันที่สิ้นสุด' , 
--     date_add DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'วันที่บันทึก' , 
--     user_add VARCHAR(50) NOT NULL COMMENT 'ผู้ใช้ที่บันทึก' , 
--     staff VARCHAR(50) NOT NULL COMMENT 'ชื่อคนขับรถ' , 
--     tel VARCHAR(50) NOT NULL COMMENT 'เบอร์ติดต่อคนขับรถ' , 
--     status ENUM('','reject','accept') NOT NULL COMMENT 'สถานะ' , 
--     PRIMARY KEY (id)
-- ) ENGINE = InnoDB;

-- INSERT Data

-- INSERT INTO tb_books (
--     id, 
--     title, 
--     name, 
--     t_id, 
--     count, 
--     start_date, 
--     end_date, 
--     date_add, 
--     user_add, 
--     staff, 
--     tel, 
--     status
-- ) VALUES (
--     NULL, 
--     'ไป Maga Bangna', 
--     'จามร เพ็งสวย', 
--     '1', 
--     '4', 
--     '2022-03-29 12:31:08.000000', 
--     '2022-03-29 16:31:08.000000', 
--     current_timestamp(), 
--     'User1', 
--     'นายไก่', 
--     '0857332844', 
--     ''
-- );
