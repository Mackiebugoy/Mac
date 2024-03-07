<?php
 class Book {
 	private $title;
 	private $author;
 	private $available;

 	public function __construct($title,$author){
 		$this->title = $title;
 		$this->author = $author;
 		$this->available = true; 

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

 		public function getName(){
 		return $this->name;
 }
 public function borrow(){
 	if($this->available){
 		$this->available = false;
 		echo "Book'{$this->title}'by{$this->author} has been borrowed.". $this->getCurrectDate()."\n";
 	}else{
 		echo "Sorry,'{$this->title}' is not available for borrowing.\n";
 	}
}
  public function returnBook(){
 	    $this->available = true;
 	 	echo "Book'{$this->title}'by{$this->author} has been returned." . $this->getCurrectDate()."\n";
    }
    private function getCurrectDate(){
    	$pogi = new DateTime();
    	return $pogi->format('Y-m-D');
    }
}
class Patron{
	private $name;

	public function __construct($name){
		$this->name = $name;
	}
		public function borrowBook(Book $book){
		$book->borrow();
	}
		public function returnBook(Book $book){
		$book->returnBook();	
	}
}

$book1 = new Book("The Catcher in the Rye","J.D. Salinger");
$book2 = new Book("To Kill a Mockingbird","Harper Lee");
$patron1 = new patron("Alice");
$patron2 = new patron("Bob");
$patron1 -> borrowBook($book1);
echo "<br>";
$patron1 -> borrowBook($book2);


?>
