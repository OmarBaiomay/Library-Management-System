--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`) VALUES
(1, 'J.K. Rowling'),
(2, 'Emily St. John Mandel'),
(3, 'Kate Elizabeth Russell'),
(4, 'William Shakespeare'),
(5, 'William Faulkner'),
(6, 'Henry James '),
(7, 'Jane Austen'),
(8, 'Charles Dickens '),
(9, 'Fyodor Dostoevsky '),
(10, 'Ernest Hemingway'),
(11, 'Franz Kafka '),
(12, 'Thomas Mann'),
(13, 'Stephen King ');

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ISBN`, `book_title`, `author`, `publisher`, `category`, `no_of_copies_actual`, `no_of_copies_current`, `publish_year`) VALUES
('9780062941503', 'My Dark Vanessa', 3, 3, 6, 10, 7, 2020),
('9780385199575', 'The Stand', 13, 13, 4, 10, 6, 1978),
('9780439064866', 'Harry Potter and the Chamber of Secrets', 1, 1, 10, 10, 7, 1999),
('9780439358071', 'Harry Potter and the Order of the Phoenix', 1, 1, 10, 10, 9, 2003),
('9780439554930', 'Harry Potter and the Sorcerer\'s Stone', 1, 1, 10, 10, 5, 1997),
('9780439655484', 'Harry Potter and the Prisoner of Azkaban', 1, 1, 10, 15, 10, 1999),
('9780525521143', 'The Glass Hotel', 2, 2, 12, 10, 8, 2020),
('9787020150700', 'Harry Potter and the Goblet of Fire', 1, 1, 10, 20, 15, 2000);

--
-- Dumping data for table `borrowing_oper`
--

INSERT INTO `borrowing_oper` (`borrowing_oper_id`, `book_Id`, `book_title`, `borrowed_from`, `borrowed_to`, `actual_return_date`, `employee_id`, `borrower_Id`, `status`) VALUES
(1, '9780439554930', 'Harry Potter and the Sorcerer\'s Stone', '2020-05-25', '2020-05-31', NULL, 1, 1, 1);

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Action and Adventure'),
(2, 'Anthology'),
(3, 'Classic'),
(4, 'Comic and Graphic Novel'),
(5, 'Crime and Detective'),
(6, 'Drama'),
(7, 'Fable'),
(8, 'Fairy Tale'),
(9, 'Fan-Fiction'),
(10, 'Fantasy'),
(11, 'Historical Fiction'),
(12, 'Horror'),
(13, 'Humor'),
(14, 'Legend'),
(15, 'Magical Realism'),
(16, 'Mystery'),
(17, 'Mythology'),
(18, 'Realistic Fiction'),
(19, 'Romance'),
(20, 'Satire'),
(21, 'Science Fiction (Sci-Fi)'),
(22, 'Short Story'),
(23, 'Suspense/Thriller'),
(24, 'Biography/Autobiography'),
(25, 'Essay'),
(26, 'Memoir'),
(27, 'Narrative Nonfiction'),
(28, 'Periodicals'),
(29, 'Reference Books'),
(31, 'Speech'),
(32, 'Novel'),
(33, 'Poetry');

-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'male'),
(2, 'famel');
--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publicher_id`, `publicher_name`) VALUES
(1, 'Scholastic Inc'),
(2, 'Knopf Publishing Group'),
(3, 'William Morrow'),
(4, 'Penguin Random House'),
(5, 'Hachette Livre'),
(6, 'Harper Collins'),
(7, 'Macmillan Publishers'),
(8, 'Simon & Schuster'),
(9, 'McGraw-Hill Education'),
(10, 'Cengage Learning'),
(11, 'Springer Nature'),
(12, 'Wiley (John Wiley & Sons)'),
(13, 'Doubleday Books');

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `password`, `is_admin`, `role`, `email`, `phone_no`, `address`, `gender`) VALUES
(1, 'Omar Baiomay', '123456789', '1', 'librarian', 'baiomayomar@gmail.com', '+201067068698', '5th sudan St, cairo', 1);

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'borrowed'),
(2, 'returned');

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `gender`, `date_of_birth`, `phone_no`, `email`, `address`) VALUES
(1, 'Mohamed Tolba Sayed', 1, '1999-12-08', '+201275469981', 'tolba256@gmail.com', '1st syria St. biyala,kafrelshielh');



