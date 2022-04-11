<?php
namespace App\Model;

use App\Database\Db;

class Book extends Db {

    public function getAllBook() {
        $sql = "
            SELECT 
                b.id,
                b.name,
                b.surname,
                b.date_register,
                b.start_date,
                b.start_time,
                b.end_date,
                b.end_time,
                b.origin,
                b.destination,
                b.title,
                b.count,
                b.remark,
                p.name AS position,
                d.name AS department,
                ch.name AS choose,
                c.name AS car,
                s.name as status,
                s.color as color
            FROM 
                `tb_book` AS b 
                LEFT JOIN tb_position AS p ON b.p_id = p.id
                LEFT JOIN tb_department AS d ON b.d_id = d.id
                LEFT JOIN tb_choose AS ch ON b.ch_id = ch.id
                LEFT JOIN tb_car AS c ON b.c_id = c.id
                LEFT JOIN tb_status AS s ON b.s_id = s.id
        ";
        $stmt = $this->pdo->query($sql);
        $data = $stmt->fetchAll();
        return $data;
    }

    public function addBook($book) {
        $sql = "
            INSERT INTO tb_book (
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
                ch_id, 
                c_id, 
                remark
            ) VALUES (
                :name, 
                :surname, 
                :position, 
                :department,
                :start_date,
                :start_time, 
                :end_date,
                :end_time, 
                :origin, 
                :destination, 
                :title, 
                :count, 
                :choose, 
                :car,
                :remark
            )
         ";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute($book);
        return $this->pdo->lastInsertId();
    }

    public function deleteBook($id) {
        $sql = "
            DELETE FROM tb_book WHERE id = ?
        ";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
        return true;

    }

    public function getBookById($id) {
        $sql = "
            SELECT 
                b.id,
                b.name,
                b.surname,
                b.date_register,
                b.start_date,
                b.start_time,
                b.end_date,
                b.end_time,
                b.origin,
                b.destination,
                b.title,
                b.count,
                b.remark,
                b.p_id,
                b.d_id,
                b.ch_id,
                b.c_id,
                p.name as position,
                d.name as department,
                ch.name as choose,
                c.name as car,
                s.name as status,
                s.color as color
            FROM 
                tb_book AS b 
                LEFT JOIN tb_position AS p ON b.p_id = p.id
                LEFT JOIN tb_department AS d ON b.d_id = d.id
                LEFT JOIN tb_choose AS ch ON b.ch_id = ch.id
                LEFT JOIN tb_car AS c ON b.c_id = c.id
                LEFT JOIN tb_status AS s ON b.s_id = s.id
            WHERE
                b.id = ?
        ";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
        $data = $stmt->fetchAll();
        return $data[0];
    }
    public function updateBook($book) {
        $sql = "
            UPDATE tb_book SET
                name = :name, 
                surname = :surname, 
                p_id = :position, 
                d_id = :department, 
                start_date = :start_date,
                start_time = :start_time, 
                end_date = :end_date, 
                end_time = :end_time,
                origin = :origin, 
                destination = :destination, 
                title = :title, 
                count = :count, 
                ch_id = :choose, 
                c_id = :car, 
                remark= :remark
            WHERE id = :id
         ";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute($book);
        return true;
    }
}

// $sql = "
//             INSERT INTO tb_book (
//                 name, 
//                 surname, 
//                 p_id, 
//                 d_id, 
//                 start_date,
//                 start_time, 
//                 end_date, 
//                 end_time,
//                 origin, 
//                 destination, 
//                 title, 
//                 count, 
//                 ch_id, 
//                 c_id, 
//                 remark
//             ) VALUES (
//                 :name, 
//                 :surname, 
//                 :position, 
//                 :department,
//                 :start_date,
//                 :start_time, 
//                 :end_date,
//                 :end_time, 
//                 :origin, 
//                 :destination, 
//                 :title, 
//                 :count, 
//                 :choose, 
//                 :car,
//                 :remark
//             )
//         ";




?>