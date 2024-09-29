 drop database Library_Management_System;
create database Library_Management_System;
Use Library_Management_System;

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    BirthDate DATE
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);



CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    CategoryID INT,
    PublisherID INT,
    YearPublished INT,
    ISBN VARCHAR(13),
    CopiesAvailable INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    Position VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);



CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    ReturnDate DATE,
    DueDate DATE,
    StaffID INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

INSERT INTO Authors (AuthorID, FirstName, LastName, BirthDate) VALUES 
(1, 'Sujatha', 'Rangarajan', '1935-05-03'),
(2, 'Vairamuthu', 'V', '1953-07-13'),
(3, 'Jeyamohan', 'Jayakantan', '1962-04-22'),
(4, 'Bharathiyar', 'Subramania', '1882-12-11'),
(5, 'C.S.', 'Lakshmi', '1944-10-28'),
(6, 'Indira', 'Parthasarathy', '1930-07-10'),
(7, 'Ashokamitran', 'N.K', '1931-09-22'),
(8, 'Vaikom', 'Muhammad Basheer', '1908-01-21'),
(9, 'Perumal', 'Murugan', '1966-10-20'),
(10, 'Sivaram', 'Swaminathan', '1906-09-29'),
(11, 'Sandilyan', 'A.S', '1910-11-10'),
(12, 'Kalki', 'Krishnamurthy', '1899-09-09'),
(13, 'Akilan', 'DAS', '1922-06-27'),
(14, 'R.K.', 'Narayan', '1906-10-10'),
(15, 'Kavikko', 'Abdul Rahman', '1941-12-09'),
(16, 'T. Janakiraman', 'chandran', '1921-02-28'),
(17, 'La. Sa.', 'Ramamirtham', '1917-12-30'),
(18, 'S. Ramakrishnan', 'murthy', '1966-05-13'),
(19, 'R. N.', 'Joe D Cruz', '1964-05-23'),
(20, 'Charu', 'Nivedita', '1953-12-18'),
(21, 'Jayakanthan', 'SRI', '1934-04-24'),
(22, 'Nanjil', 'Nadan', '1947-12-10'),
(23, 'N. Parthasarathy', 'Pillai', '1932-01-22'),
(24, 'V. V. S.', 'Aiyar', '1881-04-02'),
(25, 'K. A.', 'Gunasekaran', '1950-08-01'),
(26, 'Bama', 'SRI', '1958-03-14'),
(27, 'Pattukkottai', 'Prabakar', '1958-07-30'),
(28, 'Rajesh', 'Kumar', '1947-06-20'),
(29, 'Neela', 'Padmanabhan', '1938-04-26'),
(130, 'Salma', 'SRI', '1968-11-30');
select * from Authors;

INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Fantasy'),
(2, 'Science Fiction'),
(3, 'Mystery'),
(4, 'Thriller'),
(5, 'Romance'),
(6, 'Horror'),
(7, 'Historical Fiction'),
(8, 'Biography'),
(9, 'Self-Help'),
(10, 'Philosophy'),
(11, 'Religion'),
(12, 'Travel'),
(13, 'Cooking'),
(14, 'Health & Fitness'),
(15, 'Science'),
(16, 'Poetry'),
(17, 'Drama'),
(18, 'Adventure'),
(19, 'Crime'),
(20, 'Humor'),
(21, 'Children’s'),
(22, 'Young Adult'),
(23, 'Graphic Novels'),
(24, 'Short Stories'),
(25, 'Dystopian'),
(26, 'Mythology'),
(27, 'Classics'),
(28, 'Autobiography'),
(29, 'Art'),
(30, 'Education');

INSERT INTO Publishers (PublisherID, PublisherName, Address, PhoneNumber, Email) VALUES
(1, 'Kalachuvadu Publications', 'Park Town', '914422345678', 'contact@kalachuvadu.com'),
(2, 'Kizhakku Pathippagam', ' Mylapore', '914424556789', 'info@kizhakku.com'),
(3, 'Uyirmmai Pathippagam', ' Madurai', '914522678910', 'support@uyirmmai.com'),
(4, 'New Horizon Media', ' T. Nagar', '914428901234', 'contact@nhm.in'),
(5, 'Manimekalai Prasuram', ' Nungambakkam', '914423456789', 'info@manimekalai.com'),
(6, 'Palaniappa Brothers', 'Park Town', '914425678901', 'contact@palaniappa.com'),
(7, 'Meiyappan Padippagam', ' Anna Salai', '914429012345', 'support@meiyappan.com'),
(8, 'Thamizhamutham', ' Madurai', '914534567890', 'contact@thamizhamutham.com'),
(9, 'Paari Nilayam', 'Coimbatore', '914422345600', 'info@paari.com'),
(10, 'Makkal Aayvu Maiyam', 'Kanchipuram', '914427890123', 'contact@makkal.com'),
(11, 'Azhagiya Pathippagam', ' Salem', '914442345670', 'info@azhagiya.com'),
(12, 'Vanathi Pathippagam', ' Vepery ', '914423456710', 'support@vanathi.com'),
(13, 'Vijaya Pathippagam', ' Thanjavur', '914436789012', 'contact@vijaya.com'),
(14, 'Bharathi Puthakalayam', ' Mount Road', '914422345678', 'info@bharathi.com'),
(15, 'Rathna Publishers', ' Tirunelveli', '914463456789', 'support@rathna.com'),
(16, 'Sura Books', ' Bharathi Salai', '914422678900', 'contact@sura.com'),
(17, 'Aaruthra Publications', ' Tiruchirappalli', '914437890123', 'info@aaruthra.com'),
(18, 'Tirumurugan Publishers', ' Kumbakonam', '914434567890', 'support@tirumurugan.com'),
(19, 'Uma Padippagam', ' Usman Road', '914428901230', 'contact@uma.com'),
(20, 'Anbu Publications', ' Erode', '914424556780', 'info@anbu.com'),
(21, 'Senthil Publishers', ' Vellore', '914416789012', 'support@senthil.com'),
(22, 'Pavai Pathippagam', ' Tuticorin', '914436789010', 'contact@pavai.com'),
(23, 'Saraswathi Publications', ' Karur ', '914432345678', 'info@saraswathi.com'),
(24, 'Kamalam Books', ' Dindigul', '914453456789', 'support@kamalam.com'),
(25, 'Malathi Publishers', ' Tiruvannamalai', '914425678900', 'contact@malathi.com'),
(26, 'Kalaignan Pathippagam', ' Pudukottai', '914432678901', 'info@kalaignan.com'),
(27, 'Nandhini Publications', ' Namakkal', '914428901234', 'support@nandhini.com'),
(28, 'Shanthi Publishers', 'Tiruppur', '914434567801', 'contact@shanthi.com'),
(29, 'Jothi Pathippagam', ' Sivakasi', '914432345670', 'info@jothi.com'),
(30, 'Tamilini Publishers', ' Villupuram', '914422345679', 'support@tamilini.com');

-- Insert data into Books
INSERT INTO Books (BookID, Title, AuthorID, CategoryID, PublisherID, YearPublished, ISBN, CopiesAvailable) VALUES
(1, 'Ponniyin Selvan', 12, 7, 1, 1955, '9788191234567', 4),
(2, 'Sivagamiyin Sapatham', 12, 7, 2, 1944, '9788192345678', 3),
(3, 'Parthiban Kanavu', 12, 7, 3, 1941, '9788193456789', 2),
(4, 'Kadal Pura', 11, 7, 4, 1967, '9788194567890', 5),
(5, 'Yavana Rani', 11, 7, 5, 1969, '9788195678901', 6),
(6, 'Marmayogi', 12, 7, 6, 1933, '9788196789012', 7),
(7, 'Alai Osai', 13, 7, 7, 1984, '9788197890123', 8),
(8, 'Vandiyathevan Vaal', 12, 7, 8, 1990, '9788198901234', 3),
(9, 'Aayirathil Oruvan', 14, 7, 9, 1965, '9788199012345', 6),
(10, 'Nandhipurathu Nayagi', 11, 7, 10, 1954, '9788190123456', 4),
(11, 'Sandilyan Kadhal Kathaigal', 11, 7, 11, 1976, '9788191234568', 2),
(12, 'Rajaraja Cholan', 12, 7, 12, 1975, '9788192345679', 3),
(13, 'Saraswathi Sabatham', 11, 7, 13, 1973, '9788193456780', 7),
(14, 'Vikram Vethal', 11, 7, 14, 1986, '9788194567891', 6),
(15, 'Paandiyar', 11, 7, 15, 1981, '9788195678902', 5),
(16, 'Thillaiyadi Valliammai', 12, 7, 16, 1989, '9788196789013', 7),
(17, 'Ponniyin Selvan - Vizhuthugal', 12, 7, 17, 1983, '9788197890124', 8),
(18, 'Ponniyin Selvan - Sambu', 12, 7, 18, 1979, '9788198901235', 6),
(19, 'Vishnu Purana Kathaigal', 11, 7, 19, 1987, '9788199012346', 5),
(20, 'Kannagi', 12, 7, 20, 1974, '9788190123457', 4),
(21, 'Kavithaigal', 13, 16, 21, 1988, '9788191234569', 3),
(22, 'Jayakanthan Kadhaigal', 21, 24, 22, 1992, '9788192345680', 5),
(23, 'Vairamuthu Kavithaigal', 2, 16, 23, 1985, '9788193456781', 6),
(24, 'Jeyamohan Sirukathaigal', 3, 24, 24, 1991, '9788194567892', 7),
(25, 'Bharathiyar Kavithaigal', 4, 16, 25, 1921, '9788195678903', 8),
(26, 'Perumal Murugan Kathaigal', 9, 24, 26, 2012, '9788196789014', 9),
(27, 'Aathichudi', 11, 21, 27, 1892, '9788197890125', 4),
(28, 'Thirukkural', 11, 10, 28, 1812, '9788198901236', 5),
(29, 'Akilan Kathaigal', 13, 24, 29, 1983, '9788199012347', 3),
(30, 'Indira Parthasarathy Kadhaigal', 6, 24, 30, 1987, '9788190123458', 2);

-- Insert data into Members
INSERT INTO Members (MemberID, FirstName, Address, PhoneNumber, Email) VALUES
(1, 'Arun',  'Chennai', '91445551234', 'arun.kumar@example.com'),
(2, 'Bala', ' Madurai', '91445551235', 'bala.murugan@example.com'),
(3, 'Chitra',  ' Coimbatore', '91445551236', 'chitra.devi@example.com'),
(4, 'Dinesh', 'Trichy', '91445551237', 'dinesh.rajan@example.com'),
(5, 'Ezhil', ' Salem', '91445551238', 'ezhil.selvi@example.com'),
(6, 'Basha',  'Thoothukudi', '91445551239', 'farooq.basha@example.com'),
(7, 'Gowtham',  ' Mount Road', '91445551240', 'gowtham.krishnan@example.com'),
(8, 'Hema', 'Park Town', '91445551241', 'hema.latha@example.com'),
(9, 'Ishwarya',  ' Madurai', '91445551242', 'ishwarya.ravi@example.com'),
(10, 'Jayakumar',  ' Coimbatore', '91445551243', 'jayakumar.v@example.com'),
(11, 'Karthik',  ' OMR Road', '91445551244', 'karthik.shankar@example.com'),
(12, 'Lakshmi', ' Nungambakkam', '91445551245', 'lakshmi.narayanan@example.com'),
(13, 'Mani', ' T Nagar', '91445551246', 'mani.maran@example.com'),
(14, 'Nithya', '  Trichy', '91445551247', 'nithya.ramesh@example.com'),
(15, 'Oviya',  ' Salem', '91445551248', 'oviya.kannan@example.com'),
(16, 'Prabhu', ' Gandhi Nagar', '91445551249', 'prabhu.das@example.com'),
(17, 'Rani',  ' Thoothukudi', '91445551250', 'rani.selvaraj@example.com'),
(18, 'Suresh',  ' Mount Road', '91445551251', 'suresh.kumar@example.com'),
(19, 'Tamil',  ' Coimbatore', '91445551252', 'tamil.selvan@example.com'),
(20, 'Uma',  ' Madurai', '91445551253', 'uma.maheswari@example.com'),
(21, 'Vijay', ' Gandhi Street', '91445551254', 'vijay.anand@example.com'),
(22, 'Yamini', ' Trichy', '91445551255', 'yamini.ravi@example.com'),
(23, 'Zara', 'Nungambakkam', '91445551256', 'zara.banu@example.com'),
(24, 'Anbu',' Salem', '91445551257', 'anbu.selvan@example.com'),
(25, 'Bhavani', 'Park Town', '91445551258', 'bhavani.shankar@example.com'),
(26, 'Chandru',  ' Coimbatore', '91445551259', 'chandru.k@example.com'),
(27, 'Deepa',  ' T Nagar', '91445551260', 'deepa.lakshmi@example.com'),
(28, 'Elango',  ' Trichy', '91445551261', 'elango.m@example.com'),
(29, 'Fathima',' Mount Road', '91445551262', 'fathima.r@example.com'),
(30, 'Gopal', ' Madurai', '91445551263', 'gopal.krishnan@example.com');



-- Insert data into Staff
INSERT INTO Staff (StaffID, FirstName, Position, PhoneNumber, Email) VALUES
(1, 'Arun',  'Librarian', '91445551234', 'arun.kumar@library.com'),
(2, 'Bala',  'Assistant Librarian', '91445551235', 'bala.murugan@library.com'),
(3, 'Chitra', 'Cataloger', '91445551236', 'chitra.devi@library.com'),
(4, 'Dinesh', 'Archivist', '91445551237', 'dinesh.rajan@library.com'),
(5, 'Ezhil',  'Library Technician', '91445551238', 'ezhil.selvi@library.com'),
(6, 'Farooq',  'Library Assistant', '91445551239', 'farooq.basha@library.com'),
(7, 'Gowtham',  'Reference Librarian', '91445551240', 'gowtham.krishnan@library.com'),
(8, 'Hema',  'Acquisitions Librarian', '91445551241', 'hema.latha@library.com'),
(9, 'Ishwarya', 'Children Librarian', '91445551242', 'ishwarya.ravi@library.com'),
(10, 'Jayakumar', 'Library Manager', '91445551243', 'jayakumar.v@library.com'),
(11, 'Karthik',  'Circulation Manager', '91445551244', 'karthik.shankar@library.com'),
(12, 'Lakshmi',  'Media Specialist', '91445551245', 'lakshmi.narayanan@library.com'),
(13, 'Mani', 'Library Director', '91445551246', 'mani.maran@library.com'),
(14, 'Nithya', 'Technical Services Librarian', '91445551247', 'nithya.ramesh@library.com'),
(15, 'Oviya', 'Outreach Librarian', '91445551248', 'oviya.kannan@library.com'),
(16, 'Prabhu',  'School Librarian', '91445551249', 'prabhu.das@library.com'),
(17, 'Rani',  'Youth Services Librarian', '91445551250', 'rani.selvaraj@library.com'),
(18, 'Suresh',  'Digital Services Librarian', '91445551251', 'suresh.kumar@library.com'),
(19, 'Tamil',  'Research Librarian', '91445551252', 'tamil.selvan@library.com'),
(20, 'Uma',  'Law Librarian', '91445551253', 'uma.maheswari@library.com'),
(21, 'Vijay',  'Medical Librarian', '91445551254', 'vijay.anand@library.com'),
(22, 'Yamini',  'Special Collections Librarian', '91445551255', 'yamini.ravi@library.com'),
(23, 'Zara',  'University Librarian', '91445551256', 'zara.banu@library.com'),
(24, 'Anbu',  'Public Services Librarian', '91445551257', 'anbu.selvan@library.com'),
(25, 'Bhavani', 'Science Librarian', '91445551258', 'bhavani.shankar@library.com'),
(26, 'Chandru',  'Humanities Librarian', '91445551259', 'chandru.k@library.com'),
(27, 'Deepa',  'Engineering Librarian', '91445551260', 'deepa.lakshmi@library.com'),
(28, 'Elango',  'Data Librarian', '91445551261', 'elango.m@library.com'),
(29, 'Fathima',  'Library IT Specialist', '91445551262', 'fathima.r@library.com'),
(30, 'Gopal',  'Art Librarian', '91445551263', 'gopal.krishnan@library.com');

-- Insert data into Loans
INSERT INTO Loans (LoanID, BookID, MemberID, LoanDate, ReturnDate, DueDate, StaffID) VALUES
(1, 1, 1, '2024-07-01', NULL, '2024-07-15', 1),
(2, 2, 2, '2024-07-02', NULL, '2024-07-16', 2),
(3, 3, 3, '2024-07-03', NULL, '2024-07-17', 3),
(4, 4, 4, '2024-07-04', NULL, '2024-07-18', 4),
(5, 5, 5, '2024-07-05', NULL, '2024-07-19', 5),
(6, 6, 6, '2024-07-06', NULL, '2024-07-20', 6),
(7, 7, 7, '2024-07-07', NULL, '2024-07-21', 7),
(8, 8, 8, '2024-07-08', NULL, '2024-07-22', 8),
(9, 9, 9, '2024-07-09', NULL, '2024-07-23', 9),
(10, 10, 10, '2024-07-10', NULL, '2024-07-24', 10),
(11, 11, 11, '2024-07-11', NULL, '2024-07-25', 11),
(12, 12, 12, '2024-07-12', NULL, '2024-07-26', 12),
(13, 13, 13, '2024-07-13', NULL, '2024-07-27', 13),
(14, 14, 14, '2024-07-14', NULL, '2024-07-28', 14),
(15, 15, 15, '2024-07-15', NULL, '2024-07-29', 15),
(16, 16, 16, '2024-07-16', NULL, '2024-07-30', 16),
(17, 17, 17, '2024-07-17', NULL, '2024-07-31', 17),
(18, 18, 18, '2024-07-18', NULL, '2024-08-01', 18),
(19, 19, 19, '2024-07-19', NULL, '2024-08-02', 19),
(20, 20, 20, '2024-07-20', NULL, '2024-08-03', 20),
(21, 21, 21, '2024-07-21', NULL, '2024-08-04', 21),
(22, 22, 22, '2024-07-22', NULL, '2024-08-05', 22),
(23, 23, 23, '2024-07-23', NULL, '2024-08-06', 23),
(24, 24, 24, '2024-07-24', NULL, '2024-08-07', 24),
(25, 25, 25, '2024-07-25', NULL, '2024-08-08', 25),
(26, 26, 26, '2024-07-26', NULL, '2024-08-09', 26),
(27, 27, 27, '2024-07-27', NULL, '2024-08-10', 27),
(28, 28, 28, '2024-07-28', NULL, '2024-08-11', 28),
(29, 29, 29, '2024-07-29', NULL, '2024-08-12', 29),
(30, 30, 30, '2024-07-30', NULL, '2024-08-13', 30);



SELECT 
    Books.BookID,
    Books.Title,
    Authors.FirstName,
    Authors.LastName,
    Publishers.PublisherName,
    Books.YearPublished,
    Books.ISBN,
    Books.CopiesAvailable
FROM 
    Books
JOIN 
    Categories ON Books.CategoryID = Categories.CategoryID
JOIN 
    Authors ON Books.AuthorID = Authors.AuthorID
JOIN 
    Publishers ON Books.PublisherID = Publishers.PublisherID
WHERE 
    Categories.CategoryName = 'Historical Fiction';
 SELECT COUNT(*) AS NumberOfMembers
FROM Members
JOIN Loans ON Members.MemberID = Loans.MemberID
WHERE Members.Address = 'Chennai';