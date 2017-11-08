<?php

require 'vendor/autoload.php'; // подключение php Word

// Подключение к БД
$dsn = 'mysql:host=mysql.zzz.com.ua	; dbname=test-php-word';
$user = 'test-php-word';
$password = 'Test1234';
$dbh = new PDO($dsn, $user, $password);

if (!empty($_GET['id'])){
    // Выборка с БД
    $sth = $dbh->query('SELECT * FROM arr_docs WHERE id ='.$_GET['id']);
    $data = $sth->fetch(PDO::FETCH_ASSOC);

    // работа с php Word
    $PHPWord = new \PhpOffice\PhpWord\PhpWord();
    $document = new \PhpOffice\PhpWord\TemplateProcessor('files/arr_docs_templates/template.docx');
    $document->setValue(['id', 'company'], [$data['id'], $data['company_name']]);
    $document->saveAs('files/arr_docs_generated/'.$data['id'].'_doc_gen.docx');
}
?>

<form method="get">
    <select name="id">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
    </select>
    <input type="submit" value="Cгенерировать">
    <a href="<?= !empty($_GET['id']) ? $data['doc_gen_link'] : '#'?>"><?= !empty($_GET['id']) ? $data['doc_gen_link'] : null ?></a>
</form>

