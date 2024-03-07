<?php 


class Book {
	private $title;
	private $author;
	private $available;
 
	public function__construct($title, $author) {
		$this ->title = $title;
		$this ->author = $author;
		$this ->available = true;
	}

	public function getTitle() {
		return $this->title;
	}

	public function getAuthor()  {
		return $this->author;
	}

	public function isAvailable() {
		return $this->available;
	}

	public function borrow(){
		if($this->available){
			$this->available = false;
			echo"Book'{$this->title}'by{$this->author}has been borrowed.\n";
		} else {
			echo"Sorry,'{$this->title}'is not available for borrowing.\n";
		}
	}

	public function returnBook() {
		$this-> available = true;
		echo"Book'{$this->title}'by{$this->author}has been retured.\n";
	}
}

class patron {
	private $name;

	public function__construct($name) {
		$this->name = $name;
	}

	public function borroBook(Book $book) {
		$book->borrow();
	}

	public function returnBook(Book $book){
		$book-> returnBook();
	}
}

$book1 = newBook("The catcher in the Rye", "J.D. Salinger");
$book2 = newBook("To kill a mockingbird", "Harper lee");
$patron1 = new patron("Alice");
$patron2 = new patron("Bob");
$patron1 -> borrowBook("$book1");
$patron1 -> borrowBook("$book2");


$date = date(M-y-D);
$book1 = newBook("The catcher in the Rye", "J.D. Salinger", $date);
$book2 = newBook("To kill a mockingbird", "Harper lee", $date);
$patron1 = new patron("Alice");
$patron2 = new patron("Bob");
echo $patron1->getBorrower().$patron1->borrowedBook($book);
echo"<br>";
echo $patron2->getBorrower().$patron1->borrowBook($book2);
echo"<br>";

?>
