-- Delete Table If Exists
DROP TABLE IF EXISTS tb_book ;

-- Create Table

CREATE TABLE tb_book ( 
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
    people TEXT NULL COMMENT 'รายชื่อผู้ที่ไป' ,
    ch_id INT NOT NULL COMMENT 'ID ตัวเลือกรับส่ง' , 
    c_id INT NOT NULL COMMENT 'ID ประเภทรถ' , 
    remark TEXT NOT NULL COMMENT 'รายละเอียดการรับส่ง' , 
    s_id INT NOT NULL DEFAULT '1' COMMENT 'ID สถานะใบขอ' , 
    user_add VARCHAR(50) NULL COMMENT 'USER ผู้กรอกข้อมูล' , 
    PRIMARY KEY (id)
) ENGINE = InnoDB;


INSERT INTO tb_book (
    id, 
    name, 
    surname, 
    p_id, 
    d_id, 
    start_date,
    start_time, 
    end_date, 
    end_time,
    origin, 
    destination, 
    title, 
    count,
    people,
    ch_id, 
    c_id, 
    remark, 
    user_add
) VALUES (
    NULL, 
    'จามร',
    'เพ็งสวย', 
    1, 
    1, 
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
    'jamorn.pe@kmitl.ac.th'
);

INSERT INTO `tb_book` (
    `id`, 
    `name`, 
    `surname`, 
    `p_id`, 
    `d_id`, 
    `date_register`, 
    `start_date`, 
    `start_time`, 
    `end_date`, 
    `end_time`, 
    `origin`, 
    `destination`, 
    `title`, 
    `count`, 
    `people`, 
    `ch_id`, 
    `c_id`, 
    `remark`, 
    `s_id`, 
    `user_add`
    ) VALUES (
        NULL, 
        'จามร', 
        'เพ็งสวย', 
        '3', 
        '1', 
        current_timestamp(), 
        '2022-04-20', 
        '09:00:00', 
        '2022-04-20', 
        '19:00:00', 
        'คณะวิทยาศาสตร์', 
        'เชียงใหม่', 
        'ไปค่ายจิตอาสา', 
        '1', 
        '1.นายจามร เพ็งสวย', 
        '1', 
        '1', 
        'ไปแล้วกลับ', 
        '1', 
        'jamorn.pe@kmitl.ac.th'
    );

