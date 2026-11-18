<?php

use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PHPUnit\Framework\TestCase;

/**
 * Checks the PhpSpreadsheet API surface used by formr
 * (application/Spreadsheet/SpreadsheetReader.php, bin/import-results.php).
 */
class SpreadsheetCompatTest extends TestCase {

    private function build(): Spreadsheet {
        $s = new Spreadsheet();
        $s->getDefaultStyle()->getFont()->setName('Helvetica');
        $s->getSheet(0)->setTitle('survey');
        $s->getSheet(0)->fromArray([['type', 'name', 'label'], ['text', 'q1', 'Question 1']]);
        $s->createSheet();
        $s->getSheet(1)->setTitle('choices');
        $s->getSheet(1)->fromArray([['list_name', 'name', 'label'], ['l1', '1', 'yes']]);
        return $s;
    }

    /** @dataProvider formats */
    public function testRoundTrip(string $writerType, string $ext): void {
        $file = sys_get_temp_dir() . '/formr_compat_' . uniqid() . '.' . $ext;
        IOFactory::createWriter($this->build(), $writerType)->save($file);

        $type = IOFactory::identify($file);
        $reader = IOFactory::createReader($type);
        $reader->setReadDataOnly(true);
        $book = $reader->load($file);
        unlink($file);

        $this->assertTrue($book->sheetNameExists('survey'));
        $sheet = $book->getSheetByName('survey');
        $this->assertSame(3, Coordinate::columnIndexFromString($sheet->getHighestDataColumn()));
        $this->assertSame(2, $sheet->getHighestDataRow());
        $this->assertSame('name', $sheet->getCell([2, 1])->getValue());
        foreach ($sheet->getRowIterator() as $row) {
            $this->assertCount(3, iterator_to_array($row->getCellIterator('A', $sheet->getHighestDataColumn())));
        }
    }

    public static function formats(): array {
        return [['Xlsx', 'xlsx'], ['Xls', 'xls']];
    }

    public function testCsvWriterOptions(): void {
        $file = sys_get_temp_dir() . '/formr_compat_' . uniqid() . '.csv';
        $writer = IOFactory::createWriter($this->build(), 'Csv');
        $writer->setDelimiter("\t");
        $writer->setEnclosure('');
        $writer->save($file);
        $this->assertStringContainsString("type\tname\tlabel", file_get_contents($file));
        unlink($file);
    }

    public function testExcelDate(): void {
        $this->assertSame(1700000000, Date::excelToTimestamp(Date::PHPToExcel(1700000000)));
    }
}
