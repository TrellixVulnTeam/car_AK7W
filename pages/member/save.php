<?php require $_SERVER['DOCUMENT_ROOT']."/car/pages/auth/auth.php";?>
<?php require $_SERVER['DOCUMENT_ROOT']."/car/vendor/autoload.php";?>
<?php

use App\Model\Book;
use App\Model\Bs;
$bookObj = new Book;
$bsObj = new Bs;
use App\Model\Line;
$lineObj = new Line;
print_r($_REQUEST);

echo $_REQUEST['action'];
echo "<br>".$_REQUEST['car'];
if ($_REQUEST['action']=='delete'){
    $bookObj->deleteBook($_REQUEST['id']);
    $bsObj->deleteBsByBook($_REQUEST['id']);
}elseif ($_REQUEST['action']=='edit'){
    $book = $_REQUEST;
    unset($book['action']);
    $bookObj->updateBook($book);
    $data = $lineObj->SentLine();
}elseif ($_REQUEST['action']=='add'){
    if($_REQUEST['car']==1){
        $book = $_REQUEST;
        unset($book['action']);
        unset($book['id']);
        $book['s_id']=5;
        $book['user_add']=$_SESSION['email'];
        $id = $bookObj->addBook($book);
        $namere="คุณ".$book['name']." ".$book['surname'];
        $data = $lineObj->SentLineSci($namere);
        echo "<pre>";
        print_r($book);
        echo "</pre>";
        echo "<br> car 1";
    }else{
        $book = $_REQUEST;
        unset($book['action']);
        unset($book['id']);
        $book['s_id']=1;
        $book['user_add']=$_SESSION['email'];
        $id = $bookObj->addBook($book);
        $bs['b_id'] = $id;
        $bs['number'] = "";
        $bs['sname'] = "";
        $bs['tel'] = "";
        $bs['s_id'] = 1;
        $bs['user_add'] = $_SESSION['email'];
        echo "<br>";
        print_r($bs);
        echo "<br> car ".$_REQUEST['car'];
        $bsObj->addBs($bs);
        $namere="คุณ".$book['name']." ".$book['surname'];
        $data = $lineObj->SentLine($namere);
    }
}

       header('Location: index.php');

?>