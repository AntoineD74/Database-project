
USE database_project;

INSERT INTO Department(name) VALUES
	("Desk"), 
    ("Comptability"), 
    ("Marketing"), 
    ("R&D"), 
    ("Human Ressources");

INSERT INTO PositionEmployee(position_name) VALUES
    ("Secretary"),
    ("Assistant"),
    ("CEO"),
    ("Referent"),
    ("Searcher"),
    ("Worker"),
    ("Technician");

INSERT INTO Country(name) VALUES 
	("France"),
    ("Italy"),
	("Germany"),
    ("Spain"),
    ("Lithunia"),
    ("Sweden");

INSERT INTO City(name, countryID) VALUES
	("Paris", 1),
	("Marseille", 1),
	("Roma", 2),
	("Berlin", 3),
	("Munich", 3),
    ("Barcelona", 4),
    ("Vilnius", 5),
    ("Klaipeda", 5),
    ("Stockholm", 6),
    ("Gothenburg", 6);
    
INSERT INTO Adress(city, house_number, street_name, postal_code) VALUES
	(1, 6, "92, chemin Lenoir", 93350),
    (2, 24, "671, place de Gerard", 13003),
    (2, 50, "92, chemin Lenoir", 13348),
    (3, 6, "Borgo Flaviana 3 Piano 6", 67300),
    (3, 25, "Incrocio Filomena 778 Piano 6", 95966),
    (4, 59, "Breuerring 82a", 51222),
    (4, 20, "Lohmannplatz 0/4", 37772),
    (5, 56, "Ilse-Pfeifer-Ring 8", 97382),
    (6, 72, "Camiño Raúl, 492, 2º A", 23158),
    (6, 85, "Travesía Cobo, 04, 80º E", 45961),
    (7, 39, "30 Doe prospektas", 21514),
    (8, 46, "73 Doe prospektas", 84215),
    (8, 72, "48 Doe gatvė", 00721),
    (9, 76, "Holmgren Gata Blackstalund", 17299),
    (10, 2, "Vasavägen Roteberg", 20742);

INSERT INTO BankDetails(name_owner, number_account, bic_code) VALUES
	("Jean-michel Leblanc", "FR0017451568", "ABCDEF2J"),
    ("Pierre Gallet", "FR015658968", "AB45D2J"),
    ("Patricia Rossi", "FR89651567", "DFG6F2J"),
    ("Giorgio Riva", "IT95622658", "DGS5EIO"),
    ("Fabiano Amato", "IT75586546", "DR6LMO9D"),
    ("Emile Scholtz", "GE56892165", "ESK6MLIO"),
    ("Frederik Jähn", "GE87531166", "EJDN8NJ6"),
    ("Jarl Adler", "GE54862666", "IEH6DLJH4"),
    ("Saul Majorga", "SP9869259", "HHF9DKJD7"),
    ("Cristian Segundo", "SP45266235", "KDJ8DJH6"),
    ("Evgenijs Baldunčiks", "LT8433566254", "HUDN7KDJ2"),
    ("Ģedimins Jankevics", "LT455876649", "DJI5EJHBD9"),
    ("Everts Muiželi", "LT9876452", "SIJF9KIFJ4"),
    ("Sigmund Axelsson", "SW78795318", "OIMD8DJ6"),
    ("Ingmar Lindgren", "SW745548645", "HUR8DDJN3");

INSERT INTO Contact(phone_number, email_adress) VALUES
	(0836223161, "Jean-mi@oormi.com"),
    (0559936342, "Pierre.Gallet@24mail.top"),
    (0217207923, "Patricia.Rossi@ijptm.com"),
    (0133757524, "RivaGiorgio@24mail.top"),
    (07243393841, "Fabiano@Amato.site"),
    (06502547263, "Emile44@gmail.com"),
    (06768829865, "Frederik.Jähn@ivideoscope.com"),
    (06768530768, "JarlAdler@filesh.site"),
    (925225623, "SMajorga@028dx.com"),
    (619643698, "christian.segundo@valibri.com"),
    (79752035, "Evgenijs.Baldunčiks@mexcool.com"),
    (7829699914, "Ģedimins90@zeemails.in"),
    (44902179, "Everts.Muiželi@omtunha.com"),
    (46615054594, "AxlssonSigmund@drdeals.site"),
    (041020117, "Ingmar.lindgren@getvid.me");

INSERT INTO StatusEmployee(status) VALUES
	("active"),
    ("left"),
    ("retired"),
    ("on leave"),
    ("on maternity/paternity leave"),
    ("on sick leave");

INSERT INTO MonthlySalary(salary) VALUES
	(1250),
    (1250),
    (1300),
    (2000),
    (1700),
    (4000),
    (1650),
    (1400),
    (3000),
    (2500),
    (3500),
    (1300),
    (1850),
    (2200),
    (2800);

INSERT INTO Employee(bank_details, adress, contact, monthly_salary, status_employee, name, surname, date_entry) VALUES
	(1, 1, 1, 1, 3, "Jean-michel", "Leblanc", '2020-12-27'),
    (2, 2, 2, 2, 6, "Pierre", "Gallet", '2006-08-25' ),
    (3, 3, 3, 3, 1, "Patricia", "Rossi", '2009-01-10'),
    (4, 4, 4, 4, 1, "Giorgio", "Riva", '2015-03-01'),
    (5, 5, 5, 5, 1, "Fabiano", "Amato", '2003-05-15'),
    (6, 6, 6, 6, 1, "Emile", "Scholtz", '2018-08-22'),
    (7, 7, 7, 7, 1, "Frederik", "Jähn", '2016-09-14'),
    (8, 8, 8, 8, 1, "Jarl", "Adler", '2001-10-19'),
    (9, 9, 9, 9, 4, "Saul", "Majorga", '2017-02-08'),
    (10, 10, 10, 10, 2, "Cristian", "Segundo", '2014-04-02'),
    (11, 11, 11, 11, 5, "Evgenijs", "Baldunčiks", '2007-05-26'),
    (12, 12, 12, 12, 2, "Ģedimins", "Jankevics", '2008-07-29'),
    (13, 13, 13, 13, 4, "Everts", "Muiželi", '2013-11-23'),
    (14, 14, 14, 14, 6, "Sigmund", "Axelsson", '2018-09-14'),
    (15, 15, 15, 15, 1, "Ingmar", "Lindgren", '2019-08-05');
    
INSERT INTO WorkDetails(employee_id, department_id, position_id) VALUES
	(1, 4, 5),
    (2, 1, 2),
    (3, 4, 1),
    (4, 3, 5),
    (5, 2, 6),
    (6, 4, 7),
    (7, 5, 4),
    (8, 2, 2),
    (9, 5, 1),
    (10, 3, 6),
    (11, 5, 4),
    (12, 4, 6),
    (13, 2, 3),
    (14, 1, 2),
    (15, 3, 1);