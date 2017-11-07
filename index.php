<?php

require 'vendor/autoload.php';

$PHPWord = new \PhpOffice\PhpWord\PhpWord();
$document = new \PhpOffice\PhpWord\TemplateProcessor('test/helloWorld.docx');
$document->setValue('search-pattern', 'TEST');
$document->saveAs('test/helloWorld_111.docx');

/*$phpWord = \PhpOffice\PhpWord\IOFactory::load('test/helloWorld_111.docx', 'Word2007'); // Read the temp file
$objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
$objWriter->save('test/helloWorld.docx');*/

