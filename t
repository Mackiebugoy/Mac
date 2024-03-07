<?php
	class Book{
		private $title;
		private $author;
		private $available;
		private $borrowDate;

		public function __construct($title, $author, $borrowDate){
			$this->title = $title;
			$this->author = $author;
			$this->available = True;
			$this->borrowDate = $borrowDate;
		}

		public function getTitle(){
			return $this->title;
		}
		public function getAuthor(){
			return $this->author;
		}
		public function isAvailable(){
			return $this->available;
		}
		public function borrow(){
			if($this->available){
				$this->available = false;
				echo "Book '{$this->title}' by {$this->author} has been borrowed.\n";
			}else{
				echo"Sorry,'{$this->title}' is not available for borrowing.\n";

				echo "<br>";
			}
		}
		public function returnBook(){
			$this->available = true;
			echo "Book '{$this->title}' by {$this->author} has been returned.\n";

		}
		public function borrowDate(){
			echo $this->borrowDate;
		}
	}
	class Patron{
		private$name;

		public function __construct($name){
			$this->name=$name;
		}
		public function borrowBook(Book $book){
			$book->borrow();
		}
		public function returnBook(Book $book){
			$book->returnBook();
		}
		public function getBorrower(){
			echo $this->name;
		}
		public function borrowDate(Book $book){
			$book->borrowDate();
		}
		
	}
	$date=date('y-m-d');
	$book1= new Book("Catcher in the Rye","J.D. Salinger",$date);
	$book2= new Book("To Kill a Mockingbird","Harper Lee",$date);
	$patron1 = new Patron("Alice ");
	$patron2 = new Patron("Bob ");
	echo $patron1->getBorrower().$patron1->borrowBook($book1);
	echo $patron1->borrowDate($book1);
	echo "<br>";
	echo $patron2->getBorrower().$patron1->borrowBook($book2);
	echo $patron2->borrowDate($book2);
?>
