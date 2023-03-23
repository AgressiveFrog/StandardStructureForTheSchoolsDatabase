/* Logo and Credits
|------------------------------| -- |--▒████████▓----▒███████▓-----|
| STANDARD STRUCTURE FOR THE   | -- |--▒██▓█▓--▒██▓--▒██▓█▓-▒██▓---|
| SCHOOLS DATABASE             | -- |--▒██▓█▓----▒██▓▒██▓█▓---▒██▓-|
|------------------------------| -- |--▒██▓█▓------▒█▓██▓█▓--▒██▓--|
| CREATED BY WILLIAM TUTHAMMA  | -- |--▒██▓█▓------▒█▓████████▓----|
| JOHNSEN   28/02/2023         | -- |--▒██▓█▓------▒█▓██▓█▓--▒██▓--|
|------------------------------| -- |--▒██▓█▓----▒██▓▒██▓█▓---▒██▓-|
| MODIFIED BY THIRD PARTIES    | -- |--▒██▓█▓--▒██▓--▒██▓█▓-▒██▓---|
|------------------------------| -- |--▒████████▓----▒███████▓-----|
*/

/*	TERMS OF USE AND SERVICE [TOS]

UPDATED: 28/02/2023
CONTACT: william.tuthamma@gmail.com
COPY: https://github.com/AgressiveFrog/StandardStructureForTheSchoolsDatabase/tree/main
COPY HOLDER: AgressiveFrog



THE DATABASE INCLUDED CAN BE ALTERED AT ANY TIME AND AS MUCH AS 
THE RECIEVER WANTS, AS LONG AS THE ORIGINAL CREATOR, WILLIAM 
TUTHAMMA JOHNSEN, IS CREDITED FOR CREATING THE MAIN STRUCTURE,
OR IF THE DATABASE IS USED AS REFERENCE FOR DEVELOPMENT OF
ANOTHER COPY.

THE CREATOR CAN DENY THE USAGE AND DEVELOPMENT OF THEIR DATABASE 
AT ANY POINT, THUS DENYING ACCESS TO THE DATABASE

THE CREATOR IS NOT RESPONSIBLE FOR SECURITY BREACHES OR 
VIOLATIONS

	FURTHER USE OR WILL SET YOU AS RESPONSIBLE FOR FURTHER ACTIONS
	AND ACCEPTING THE TERMS OF USE AND SERVICE AGREEMENT
    IF YOU DO NOT AGREE, DISCONTINUE FURTHER USE OF THE DATA BASE
*/



drop schema if exists LoanSystem;
create schema LoanSystem;
use LoanSystem;

create table  Student (
	StudentID char(10) primary key,
    FirstName char(35),
    LastName char(35),
    Class char(5)

);

create table Equipment (
	EquipmentID int(4) primary key,
    EquipmentName char(40),
    Team char(10),
    Tree char(20),
    isAvalible int(1)

);

create table LoanSystem (
	LoanID char(8) primary key,
    LoanDate datetime,
    StudentID char(8),
    EquipmentID int(4),
    constraint LoanStudentID foreign key (StudentID) references Student(StudentID),
    constraint LoanEquipmentID foreign key (EquipmentID) references Equipment(EquipmentID)

);

insert into Equipment(EquipmentID, EquipmentName, Team, Tree, isAvalible) values
	-- EquipmentID int 4, EquipmentName char 30, Team char 10, Tree char 20, isAvalible bool
	('0001', 'Canon EOS 90D', 'Gruppe 1', 'Lukkerhus', '1'),
	('0002', 'Canon EOS 90D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0003', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0004', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0005', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0006', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0007', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0008', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0009', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0010', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0011', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0012', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0013', 'Sony A 7s', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0014', 'Hasselblad X1DLL', 'Gruppe 1', 'Lukkerhus', '1'),
    ('0015', 'Canon EFS 18-135mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0016', 'Canon EFS 18-135mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0017', 'Canon EFS 18-135mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0018', 'Canon EFS 18-135mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0019', 'Canon EFS 18-135mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0020', 'Canon EFS 18-135mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0021', 'Canon EFS 18-135mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0022', 'Canon 24-105mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0023', 'Canon 24-105mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0024', 'Canon 24-105mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0025', 'Canon 85mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0026', 'Canon 85mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0027', 'Canon 18-55mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0028', 'Canon 18-55mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0029', 'Canon 70-200mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0030', 'Canon 70-200mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0031', 'Canon 17-40mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0032', 'Canon 50mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0033', 'Canon 50mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0034', 'Canon 28-80mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0035', 'Canon BCTV zoom 6.7-121mm', 'Gruppe 1', 'Objektiv', '1'),
    ('0036', 'Canon et-74 tilbehoor', 'Gruppe 1', 'Extra', '1'),
    ('0037', 'Canon et-74 tilbehoor', 'Gruppe 1', 'Extra', '1'),
    ('0038', 'Canon EW-83m tilbehoor', 'Gruppe 1', 'Extra', '1'),
    ('0039', 'Canon EW-83m tilbehoor', 'Gruppe 1', 'Extra', '1'),
    ('0040', 'Canon EW-83m tilbehoor', 'Gruppe 1', 'Extra', '1'),
    ('0041', 'Canon EOS 70D', 'Gruppe 1', 'Lukkerhus', '1'),
	('0042', 'Canon EFS 18-135mm', 'Gruppe 1', 'Objektiv', '1'),
     
    ('0155', 'Røde Microphone Bag 1', 'Gruppe 3', 'Bag', '1'),
    ('0156', 'Røde Microphone Bag 2', 'Gruppe 3', 'Bag', '1'),
    ('0157', 'Røde Microphone Bag 3', 'Gruppe 3', 'Bag', '1'),
    ('0158', 'Liten Røde Micophone Bag', 'Gruppe 3', 'Bag', '1'),
    ('0159', 'Røde Microphone', 'Gruppe 3', 'Mikrofon', '1'),
    ('0160', 'Medium Røde Michrophone Bag', 'Gruppe 3', 'Bag', '1'),
    ('0161', 'Zoom Recorder', 'Gruppe 3', 'Mikrofon', '1'),
    ('0209', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0210', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0211', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0212', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0213', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0214', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0215', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0216', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0217', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0218', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0219', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0220', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0221', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0222', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0223', 'Atomas Ninja', 'Gruppe 3', 'Extra', '1'),
    ('0224', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0225', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0227', 'Small Canon Light Bag', 'Gruppe 3', 'Bag', '1'),
    ('0228', 'Small Canon Light Bag', 'Gruppe 3', 'Bag', '1'),
    ('0226', 'Røde Pod Mic', 'Gruppe 3', 'Mikrofon', '1'),
    ('0241', 'Large Zoom Recorder', 'Gruppe 3', 'Mikrofon', '1'),
    ('0239', 'Large Zoom Recorder', 'Gruppe 3', 'Mikrofon', '1'),
    ('0238', 'Large Zoom Recorder', 'Gruppe 3', 'Mikrofon', '1'),
    ('0240', 'Large Zoom Recorder', 'Gruppe 3', 'Mikrofon', '1'),
    ('0237', 'Medium Zoom Recorder', 'Gruppe 3', 'Mikrofon', '1'),
    ('0235', 'Medium Zoom Recorder', 'Gruppe 3', 'Mikrofon', '1'),
    ('0236', 'Medium Zoom Recorder', 'Gruppe 3', 'Mikrofon', '1'),
    ('0233', 'Medium Zoom Recorder H4', 'Gruppe 3', 'Mikrofon', '1'),
    ('0234', ' Medium Zoom Recorder H4', 'Gruppe 3', 'Mikrofon', '1'),
    ('0230', 'Batteri', 'Gruppe 3', 'Batteri', '1'),
    ('0242', 'Medium Zoom Recorder Box', 'Gruppe 3', 'Bag', '1'),
    ('0243', 'Small Zoom Recorder Box', 'Gruppe 3', 'Bag', '1'),
    ('0244', ' Small Zoom Recorder Box', 'Gruppe 3', 'Bag', '1'),
    ('0247', 'Medium Zoom Recorder Box', 'Gruppe 3', 'Bag', '1'),
    ('0245', 'Small Zoom Recorder No Box', 'Gruppe 3', 'Mikrofon', '1'),
    ('0248', 'Small Parasonic Stero Microphone', 'Gruppe 3', 'Mikrofon', '1'),
    ('0246', 'Small Tascam Microphone', 'Gruppe 3', 'Mikrofon', '1'),
    ('0181', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0182', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0183', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0184', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0185', ' Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0186', ' Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0187', ' Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0188', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0189', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0190', ' Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0191', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0192', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0193', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0194', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0195', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0196', 'Batteri Lader Canon', 'Gruppe 3', 'Lader', '1'),
    ('0197', 'Parasonic AC Adaptor', 'Gruppe 3', 'Lader', '1'),
    ('0198', 'Parasonic AC Adaptor', 'Gruppe 3', 'Lader', '1'),
    ('0231', 'Edorol Microphone', 'Gruppe 3', 'Mikrofon', '1'),
    
    ('0129', 'Bendro Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0130', 'Manfrotto Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0147', 'Manfrotto Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0133', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0138', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0103', 'Manfrotto Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0105', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0104', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0132', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0131', 'Libec Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0143', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0101', 'Velbon Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0102', 'Libec Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0144', 'Manfrotto Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0134', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0136', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0137', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0139', 'Libec Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0121', 'Live Trak L-12', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0120', 'Profoto Reflector', 'Gruppe 2', 'Reflektor', '1'),
    ('0126', 'Osmo', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0119', 'Aputure', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0116', 'Sirui', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0152', 'Sannheiser Microphone', 'Gruppe 2', 'Mikrofon', '1'),
    ('0112', 'Sannheiser Microphone', 'Gruppe 2', 'Mikrofon', '1'),
    ('0124', 'Mavic Drone', 'Gruppe 2', 'Drone', '1'),
    ('0123', 'Aputure', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0109', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0145', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0117', 'AKG Aucustics', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0113', 'Audio Technica', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('8888', 'Godox V1', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0153', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0154', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0148', 'Dji Inspire', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('9999', 'Dji Ronin', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0111', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0110', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0118', 'AKG Aucustics', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0115', 'Audio Technica', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0114', 'Audio Technica', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0140', 'Manfrotto Stativ', 'Gruppe 2', 'Stativ', '1'),
    ('0141', 'Shotgun Microphone', 'Gruppe 2', 'Mikrofon', '1'),
    ('0151', 'Sennheiser Microphone', 'Gruppe 2', 'Mikrofon', '1'),
    ('0108', 'Libec', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0149', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0150', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0146', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0142', 'Ukjent Utstyr', 'Gruppe 2', 'Ukjent', '1'),
    ('0107', 'Libec', 'Gruppe 2', 'UNREGISTERED', '1'),
    ('0106', 'Cullman', 'Gruppe 2', 'UNREGISTERED', '1');
    
insert into Student values
	-- StudentID char 8, FirstName char 35, LastName char 35, class char 5
    ('fraabd01', 'Franol', 'Abdulahi', 'im1a'),
    ('meqabd17', 'Meqdam', 'Abdullah', 'im1a'),
    ('odiand22', 'Odin', 'Kleveland', 'im1a'),
    ('geigje', 'Geir', 'Gjerde', 'TEAC'),
    ('jelhla26', 'Jely', 'Hlawnceu', 'im1a'),
    ('benive', 'Bente', 'Iversen', 'TEAC'),
    ('alvjac28', 'Alva', 'Jacobsen', 'im1a'),
    ('wiljoh22', 'William', 'Johnsen', 'im1a'),
    ('elikje05', 'Elise', 'Kjervik', 'im1a'),
    ('isekol01', 'Iselin', 'Kolstad', 'im1a'),
    ('kollar', 'Kolbjoorn', 'Larsen', 'TEAC'),
    ('sealon08', 'Sean', 'Long', 'im1a'),
    ('ismpre05', 'Ismael', 'Prescher', 'im1a'),
    ('ingram09', 'Ingelinn', 'Ramberg', 'im1a'),
    ('vegrod15', 'Vegard', 'Roodsand', 'im1a'),
    ('isastra11', 'Isak', 'Strand', 'im1a'),
    ('oveaal', 'Ove', 'Aalo', 'TEAC');
    
insert into LoanSystem values
	-- LoanID char 8, LoanDate datetime, StudentID char 8, EquipmentID int 4
    ('AA000001', '2023-01-01 10:23:59', 'wiljoh22', '0002'),
    ('BX000241', '2023-01-16 12:15:32', 'isekol', '0005'),
    ('KL623548', '2024-04-12 16:48:02', 'vegrod', '0007');

select LoanSystem.LoanDate, Equipment.EquipmentName, Equipment.Tree, Student.FirstName, Student.LastName from LoanSystem
join Student on Student.StudentID = LoanSystem.StudentID
join Equipment on Equipment.EquipmentID = LoanSystem.EquipmentID;
