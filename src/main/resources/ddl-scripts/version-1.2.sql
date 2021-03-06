ALTER TABLE IF EXISTS status
ADD COLUMN IF NOT EXISTS consulting_fee varchar(100);

CREATE SEQUENCE university_id_seq START 900001;

CREATE TABLE university (
	university_id integer PRIMARY KEY DEFAULT nextval('university_id_seq'),
	name varchar(200) NOT NULL,
	state varchar(100)
);

INSERT INTO university(name, state) VALUES('University of South Alabama','Alabama');
INSERT INTO university(name, state) VALUES('University of Alabama - Tuscaloosa','Alabama');
INSERT INTO university(name, state) VALUES('University of Alabama - Huntsville','Alabama');
INSERT INTO university(name, state) VALUES('Faulkner University','Alabama');
INSERT INTO university(name, state) VALUES('Troy State University','Alabama');
INSERT INTO university(name, state) VALUES('University of North Alabama','Alabama');
INSERT INTO university(name, state) VALUES('The University of Alabama at Birmingham ','Alabama');
INSERT INTO university(name, state) VALUES('Auburn University at Montgomery ','Alabama');
INSERT INTO university(name, state) VALUES('Auburn University*','Alabama');
INSERT INTO university(name, state) VALUES('Arkansas State University','Arkansas');
INSERT INTO university(name, state) VALUES('Henderson State University','Arkansas');
INSERT INTO university(name, state) VALUES('Arizona State University','Arizona');
INSERT INTO university(name, state) VALUES('University of Arizona ','Arizona');
INSERT INTO university(name, state) VALUES('Northern Arizona University','Arizona');
INSERT INTO university(name, state) VALUES('Colorado State University','Colorado');
INSERT INTO university(name, state) VALUES('University of Colorado - Springs','Colorado');
INSERT INTO university(name, state) VALUES('Webster University-Colorado Springs Denver','Colorado');
INSERT INTO university(name, state) VALUES('University of Denver ','Colorado');
INSERT INTO university(name, state) VALUES('Rocky Mountain College of Art + Design','Colorado');
INSERT INTO university(name, state) VALUES('University of Colorado Denver','Colorado');
INSERT INTO university(name, state) VALUES('Colorado Mesa University','Colorado');
INSERT INTO university(name, state) VALUES('University of New Haven','Connecticut');
INSERT INTO university(name, state) VALUES('University of Connecticut - Only UG','Connecticut');
INSERT INTO university(name, state) VALUES('University of Hartford','Connecticut');
INSERT INTO university(name, state) VALUES('Fairfield University','Connecticut');
INSERT INTO university(name, state) VALUES('University of Bridgeport','Connecticut');
INSERT INTO university(name, state) VALUES('Sacred Heart University','Connecticut');
INSERT INTO university(name, state) VALUES('Post University','Connecticut');
INSERT INTO university(name, state) VALUES('Eastern Connecticut State University','Connecticut');
INSERT INTO university(name, state) VALUES('California State University ??? Fullerton','California');
INSERT INTO university(name, state) VALUES('California State University ??? Northridge','California');
INSERT INTO university(name, state) VALUES('California State University ??? Sacramento','California');
INSERT INTO university(name, state) VALUES('California State University - Bakersfield','California');
INSERT INTO university(name, state) VALUES('San Jose State University','California');
INSERT INTO university(name, state) VALUES('Sonoma State University','California');
INSERT INTO university(name, state) VALUES('San Francisco State University','California');
INSERT INTO university(name, state) VALUES('Webster University - Irvine','California');
INSERT INTO university(name, state) VALUES('California State University ??? San Marcos','California');
INSERT INTO university(name, state) VALUES('California State University ??? Long Beach','California');
INSERT INTO university(name, state) VALUES('California State University ??? East Bay','California');
INSERT INTO university(name, state) VALUES('DeVry Education ??? Los Angeles & San Francisco','California');
INSERT INTO university(name, state) VALUES('California Lutheran University ??? "(MBA,MSIT,MSQE,MPPA Only)"','California');
INSERT INTO university(name, state) VALUES('California State University San Bernardino Ext Only','California');
INSERT INTO university(name, state) VALUES('California International Business University','California');
INSERT INTO university(name, state) VALUES('California State University ??? Fresno','California');
INSERT INTO university(name, state) VALUES('California State University Channel Islands','California');
INSERT INTO university(name, state) VALUES('California State University - Dominguez Hills','California');
INSERT INTO university(name, state) VALUES('California State University ??? Humboldt State','California');
INSERT INTO university(name, state) VALUES('California State University - Monterey Bay','California');
INSERT INTO university(name, state) VALUES('University of West Los Angeles','California');
INSERT INTO university(name, state) VALUES('Woodbury University','California');
INSERT INTO university(name, state) VALUES('Claremont Graduate University *','California');
INSERT INTO university(name, state) VALUES('Monterey Institute of International Studies','California');
INSERT INTO university(name, state) VALUES('Golden Gate University','California');
INSERT INTO university(name, state) VALUES('University of California - Berkeley Extension','California');
INSERT INTO university(name, state) VALUES('University of California - Davis Only Ext & ESL','California');
INSERT INTO university(name, state) VALUES('California State University - Northridge Only Ext & ESL','California');
INSERT INTO university(name, state) VALUES('International Technological University','California');
INSERT INTO university(name, state) VALUES('Whittier College','California');
INSERT INTO university(name, state) VALUES('American University ','California');
INSERT INTO university(name, state) VALUES('San Joaquin College','California');
INSERT INTO university(name, state) VALUES('Menlo College','California');
INSERT INTO university(name, state) VALUES('Westcliff University','California');
INSERT INTO university(name, state) VALUES('Foothill and De Anza Colleges','California');
INSERT INTO university(name, state) VALUES('California College of Music','California');
INSERT INTO university(name, state) VALUES('Musicians Institute','California');
INSERT INTO university(name, state) VALUES('Los Angeles Film & Recording School - Only UG','California');
INSERT INTO university(name, state) VALUES('Southern State University','California');
INSERT INTO university(name, state) VALUES('California State University  Los Angeles','California');
INSERT INTO university(name, state) VALUES('Santa Barbara City College','California');
INSERT INTO university(name, state) VALUES('Santiago Canyon College','California');
INSERT INTO university(name, state) VALUES('Brooks Institute','California');
INSERT INTO university(name, state) VALUES('Squaw Valley Academy (High School)','California');
INSERT INTO university(name, state) VALUES('Fairmont Schools (High School)','California');
INSERT INTO university(name, state) VALUES('Marist Schools (High School)','California');
INSERT INTO university(name, state) VALUES('College of San Mateo','California');
INSERT INTO university(name, state) VALUES('University of the Pacific ','California');
INSERT INTO university(name, state) VALUES('Peralta Community College District','California');
INSERT INTO university(name, state) VALUES('Moorpark College','California');
INSERT INTO university(name, state) VALUES('University of Delaware - Only UG','Delaware');
INSERT INTO university(name, state) VALUES('Wilmington University','Delaware');
INSERT INTO university(name, state) VALUES('University of Tampa','Florida');
INSERT INTO university(name, state) VALUES('Florida Institute of Technology','Florida');
INSERT INTO university(name, state) VALUES('University of South Florida *','Florida');
INSERT INTO university(name, state) VALUES('Embry???Riddle Aeronautical University','Florida');
INSERT INTO university(name, state) VALUES('Florida International University','Florida');
INSERT INTO university(name, state) VALUES('Miami International University of Art and Design','Florida');
INSERT INTO university(name, state) VALUES('Florida Polytechnic University','Florida');
INSERT INTO university(name, state) VALUES('Florida A & M University','Florida');
INSERT INTO university(name, state) VALUES('Atlantis University','Florida');
INSERT INTO university(name, state) VALUES('Webster University ??? Ocala Jacksonville','Florida');
INSERT INTO university(name, state) VALUES('Nova Southeastern University','Florida');
INSERT INTO university(name, state) VALUES('Florida National University','Florida');
INSERT INTO university(name, state) VALUES('St. Thomas University','Florida');
INSERT INTO university(name, state) VALUES('St. Leo University','Florida');
INSERT INTO university(name, state) VALUES('IMG Academy (Sports Camps)','Florida');
INSERT INTO university(name, state) VALUES('Full Sail University','Florida');
INSERT INTO university(name, state) VALUES('The University of Central Florida ??? (UG Only)','Florida');
INSERT INTO university(name, state) VALUES('Keiser University','Florida');
INSERT INTO university(name, state) VALUES('Schiller International University','Florida');
INSERT INTO university(name, state) VALUES('National Aviation Academy','Florida');
INSERT INTO university(name, state) VALUES('Everest University','Florida');
INSERT INTO university(name, state) VALUES('Marconi International University','Florida');
INSERT INTO university(name, state) VALUES('University of North Florida ??? English Only','Florida');
INSERT INTO university(name, state) VALUES('Stetson University','Florida');
INSERT INTO university(name, state) VALUES('Broward College','Florida');
INSERT INTO university(name, state) VALUES('Florida Southern College','Florida');
INSERT INTO university(name, state) VALUES('San Ignacio University','Florida');
INSERT INTO university(name, state) VALUES('Herzing University','Georgia');
INSERT INTO university(name, state) VALUES('Hawaii Pacific University','Hawaii');
INSERT INTO university(name, state) VALUES('Lewis???Clark State College','Idaho');
INSERT INTO university(name, state) VALUES('Riverstone International School (High School)','Idaho');
INSERT INTO university(name, state) VALUES('Bradley University','Illinois');
INSERT INTO university(name, state) VALUES('University of Illinois at Chicago ','Illinois');
INSERT INTO university(name, state) VALUES('Illinois State University *','Illinois');
INSERT INTO university(name, state) VALUES('Governors State University','Illinois');
INSERT INTO university(name, state) VALUES('Southern Illinois University - Carbondale','Illinois');
INSERT INTO university(name, state) VALUES('DePaul University - Selected Programs','Illinois');
INSERT INTO university(name, state) VALUES('Southern Illinois University Edwardsville','Illinois');
INSERT INTO university(name, state) VALUES('North Eastern Illinois University','Illinois');
INSERT INTO university(name, state) VALUES('Judson University','Illinois');
INSERT INTO university(name, state) VALUES('North Park University','Illinois');
INSERT INTO university(name, state) VALUES('Millikin University','Illinois');
INSERT INTO university(name, state) VALUES('DeVry Education','Illinois');
INSERT INTO university(name, state) VALUES('Illinois Eastern Community College','Illinois');
INSERT INTO university(name, state) VALUES('North Central College','Illinois');
INSERT INTO university(name, state) VALUES('National Louis University','Illinois');
INSERT INTO university(name, state) VALUES('Concordia University of Chicago','Illinois');
INSERT INTO university(name, state) VALUES('Indiana Institute of Technology','Indiana');
INSERT INTO university(name, state) VALUES('Trine University','Indiana');
INSERT INTO university(name, state) VALUES('Marian University','Indiana');
INSERT INTO university(name, state) VALUES('Saint Mary???s College ??? UG Only','Indiana');
INSERT INTO university(name, state) VALUES('University of Evansville','Indiana');
INSERT INTO university(name, state) VALUES('Valparaiso University','Indiana');
INSERT INTO university(name, state) VALUES('University of Indianapolis ??? Only UG','Indiana');
INSERT INTO university(name, state) VALUES('Purdue University - Northwest','Indiana');
INSERT INTO university(name, state) VALUES('Iowa State University - Only UG','Iowa');
INSERT INTO university(name, state) VALUES('Upper Iowa University (UG & ESL)','Iowa');
INSERT INTO university(name, state) VALUES('St. Ambrose University','Iowa');
INSERT INTO university(name, state) VALUES('Kansas State University Polytechnic Campus','Kansas');
INSERT INTO university(name, state) VALUES('Wichita State University','Kansas');
INSERT INTO university(name, state) VALUES('Emporia State University','Kansas');
INSERT INTO university(name, state) VALUES('Pittsburgh State University','Kansas');
INSERT INTO university(name, state) VALUES('Ottawa University','Kansas');
INSERT INTO university(name, state) VALUES('The University of Kansas ??? (UG Only)','Kansas');
INSERT INTO university(name, state) VALUES('Western Kentucky University','Kentucky');
INSERT INTO university(name, state) VALUES('Campbellsville University','Kentucky');
INSERT INTO university(name, state) VALUES('University of the Cumberlands','Kentucky');
INSERT INTO university(name, state) VALUES('Murray State University','Kentucky');
INSERT INTO university(name, state) VALUES('Midway University','Kentucky');
INSERT INTO university(name, state) VALUES('Eastern Kentucky University','Kentucky');
INSERT INTO university(name, state) VALUES('Louisiana State University ','Louisiana');
INSERT INTO university(name, state) VALUES('The University of Maine','Maine');
INSERT INTO university(name, state) VALUES('The University of Southern Maine','Maine');
INSERT INTO university(name, state) VALUES('Husson University','Maine');
INSERT INTO university(name, state) VALUES('Salisbury University','Maryland');
INSERT INTO university(name, state) VALUES('University of Maryland - Baltimore County','Maryland');
INSERT INTO university(name, state) VALUES('Washington College','Maryland');
INSERT INTO university(name, state) VALUES('Hood College','Maryland');
INSERT INTO university(name, state) VALUES('University of Massachusetts - Lowell','Massachusetts');
INSERT INTO university(name, state) VALUES('Bridgewater State University','Massachusetts');
INSERT INTO university(name, state) VALUES('University of Massachusetts Dartmouth','Massachusetts');
INSERT INTO university(name, state) VALUES('University of Massachusetts - Boston ','Massachusetts');
INSERT INTO university(name, state) VALUES('Massachusetts College of Pharmacy and Health Sciences','Massachusetts');
INSERT INTO university(name, state) VALUES('Western New England University','Massachusetts');
INSERT INTO university(name, state) VALUES('Hult International Business School','Massachusetts');
INSERT INTO university(name, state) VALUES('Suffolk University ','Massachusetts');
INSERT INTO university(name, state) VALUES('Merrimack College','Massachusetts');
INSERT INTO university(name, state) VALUES('Fisher College','Massachusetts');
INSERT INTO university(name, state) VALUES('Elms College','Massachusetts');
INSERT INTO university(name, state) VALUES('Assumption College','Massachusetts');
INSERT INTO university(name, state) VALUES('Endicott College (Only UG)','Massachusetts');
INSERT INTO university(name, state) VALUES('University of Michigan - Flint','Michigan');
INSERT INTO university(name, state) VALUES('Eastern Michigan University','Michigan');
INSERT INTO university(name, state) VALUES('Saginaw Valley State University','Michigan');
INSERT INTO university(name, state) VALUES('Grand Valley State University','Michigan');
INSERT INTO university(name, state) VALUES('Lawrence Technology University','Michigan');
INSERT INTO university(name, state) VALUES('Ferris State University','Michigan');
INSERT INTO university(name, state) VALUES('Northern Michigan University','Michigan');
INSERT INTO university(name, state) VALUES('Northwood University','Michigan');
INSERT INTO university(name, state) VALUES('Alma College','Michigan');
INSERT INTO university(name, state) VALUES('Central Michigan University','Michigan');
INSERT INTO university(name, state) VALUES('Bethany Lutheran College','Minnesota');
INSERT INTO university(name, state) VALUES('University of Central Missouri','Missouri');
INSERT INTO university(name, state) VALUES('University of Missouri - St. Louis','Missouri');
INSERT INTO university(name, state) VALUES('Saint Louis University  *','Missouri');
INSERT INTO university(name, state) VALUES('Missouri University of Science & Technology','Missouri');
INSERT INTO university(name, state) VALUES('Webster University ??? St. Louis','Missouri');
INSERT INTO university(name, state) VALUES('Northwest Missouri State University','Missouri');
INSERT INTO university(name, state) VALUES('Southeast Missouri State University','Missouri');
INSERT INTO university(name, state) VALUES('Fontbonne University','Missouri');
INSERT INTO university(name, state) VALUES('Drury University','Missouri');
INSERT INTO university(name, state) VALUES('Mississippi State University','Mississippi');
INSERT INTO university(name, state) VALUES('University of Mississippi ','Mississippi');
INSERT INTO university(name, state) VALUES('University of Montana','Montana');
INSERT INTO university(name, state) VALUES('Montana State University ??? Bozeman','Montana');
INSERT INTO university(name, state) VALUES('Montana State University - Billing','Montana');
INSERT INTO university(name, state) VALUES('Nebraska Wesleyan University - UG Only','Nebraska');
INSERT INTO university(name, state) VALUES('Chadron State College','Nebraska');
INSERT INTO university(name, state) VALUES('University of Nebraska???Lincoln (UG Only)','Nebraska');
INSERT INTO university(name, state) VALUES('Nebraska College of Technical Agriculture','Nebraska');
INSERT INTO university(name, state) VALUES('University of Nevada-Reno','Nevada');
INSERT INTO university(name, state) VALUES('University of Nevada - Las Vegas','Nevada');
INSERT INTO university(name, state) VALUES('Southern New Hampshire University','New Hampshire');
INSERT INTO university(name, state) VALUES('University of New Hampshire School of Law','New Hampshire');
INSERT INTO university(name, state) VALUES('University of New Hampshire','New Hampshire');
INSERT INTO university(name, state) VALUES('Colby Sawyer College','New Hampshire');
INSERT INTO university(name, state) VALUES('New Jersey Institute of Technology','New Jersey');
INSERT INTO university(name, state) VALUES('Stevens Institute of Technology','New Jersey');
INSERT INTO university(name, state) VALUES('FDU (Farleigh Dickinson University)','New Jersey');
INSERT INTO university(name, state) VALUES('Saint Peters University','New Jersey');
INSERT INTO university(name, state) VALUES('Rowan University','New Jersey');
INSERT INTO university(name, state) VALUES('Drew University *','New Jersey');
INSERT INTO university(name, state) VALUES('Monmouth University','New Jersey');
INSERT INTO university(name, state) VALUES('Felician University','New Jersey');
INSERT INTO university(name, state) VALUES('Rider University','New Jersey');
INSERT INTO university(name, state) VALUES('Bloomfield College','New Jersey');
INSERT INTO university(name, state) VALUES('Purnell School (High School)','New Jersey');
INSERT INTO university(name, state) VALUES('Clarkson University','New York');
INSERT INTO university(name, state) VALUES('St. John???s University','New York');
INSERT INTO university(name, state) VALUES('St. John???s University School of Law','New York');
INSERT INTO university(name, state) VALUES('Rochester Institute of Technology','New York');
INSERT INTO university(name, state) VALUES('Pace University','New York');
INSERT INTO university(name, state) VALUES('Pace University School of Law','New York');
INSERT INTO university(name, state) VALUES('NYIT (New York Institute of Technology)','New York');
INSERT INTO university(name, state) VALUES('Hofstra University ','New York');
INSERT INTO university(name, state) VALUES('Yeshiva University','New York');
INSERT INTO university(name, state) VALUES('Long Island - C.W. Post Campus','New York');
INSERT INTO university(name, state) VALUES('Long Island - Brooklyn Campus','New York');
INSERT INTO university(name, state) VALUES('Manhattan College','New York');
INSERT INTO university(name, state) VALUES('DeVry Education','New York');
INSERT INTO university(name, state) VALUES('Daemen College','New York');
INSERT INTO university(name, state) VALUES('Monroe College','New York');
INSERT INTO university(name, state) VALUES('ASA College - UG Only','New York');
INSERT INTO university(name, state) VALUES('LIM College','New York');
INSERT INTO university(name, state) VALUES('Vaughn College of Aeronautics and Technology','New York');
INSERT INTO university(name, state) VALUES('New York University ???(SCPS)','New York');
INSERT INTO university(name, state) VALUES('State University of New York ??? Polytechnic','New York');
INSERT INTO university(name, state) VALUES('State University of New York ??? New Paltz','New York');
INSERT INTO university(name, state) VALUES('State University of New York ??? Albany','New York');
INSERT INTO university(name, state) VALUES('State University of New York at Oswego','New York');
INSERT INTO university(name, state) VALUES('State University of New York at Binghamton - Only UG','New York');
INSERT INTO university(name, state) VALUES('State University of New York at Geneseo','New York');
INSERT INTO university(name, state) VALUES('State University of New York ??? Brockport','New York');
INSERT INTO university(name, state) VALUES('SUNY Buffalo State College','New York');
INSERT INTO university(name, state) VALUES('State University of New York ??? Cobleskill','New York');
INSERT INTO university(name, state) VALUES('State University of New York ??? Old Westbury','New York');
INSERT INTO university(name, state) VALUES('State University of New York ??? Plattsburgh','New York');
INSERT INTO university(name, state) VALUES('State University of New York ??? Morrisville','New York');
INSERT INTO university(name, state) VALUES('State University of New York - Fredonia','New York');
INSERT INTO university(name, state) VALUES('New York Film Academy','New York');
INSERT INTO university(name, state) VALUES('Marist College ??? Computer Science Dept','New York');
INSERT INTO university(name, state) VALUES('Globe Institute of Technology','New York');
INSERT INTO university(name, state) VALUES('Adelphi University','New York');
INSERT INTO university(name, state) VALUES('Mercy College','New York');
INSERT INTO university(name, state) VALUES('The College of Saint Rose','New York');
INSERT INTO university(name, state) VALUES('College of Mount Saint Vincent','New York');
INSERT INTO university(name, state) VALUES('International School of New York ','New York');
INSERT INTO university(name, state) VALUES('Manhattan Institute of Management ??? MBA','New York');
INSERT INTO university(name, state) VALUES('Digital Film Academy','New York');
INSERT INTO university(name, state) VALUES('ZONI Language Centers (ESL Only)','New York');
INSERT INTO university(name, state) VALUES('Berkeley College','New York');
INSERT INTO university(name, state) VALUES('St. Francis College','New York');
INSERT INTO university(name, state) VALUES('University of North Carolina Wilmington','North Carolina');
INSERT INTO university(name, state) VALUES('University of North Carolina at Pembroke','North Carolina');
INSERT INTO university(name, state) VALUES('High Point University','North Carolina');
INSERT INTO university(name, state) VALUES('University of New Mexico','New Mexico');
INSERT INTO university(name, state) VALUES('Menaul School','New Mexico');
INSERT INTO university(name, state) VALUES('Ohio Northern University','Ohio');
INSERT INTO university(name, state) VALUES('Kent State University','Ohio');
INSERT INTO university(name, state) VALUES('Miami University','Ohio');
INSERT INTO university(name, state) VALUES('Ohio University - Only UG','Ohio');
INSERT INTO university(name, state) VALUES('Ohio Wesleyan University - Only UG','Ohio');
INSERT INTO university(name, state) VALUES('University of Dayton ','Ohio');
INSERT INTO university(name, state) VALUES('University of Findlay','Ohio');
INSERT INTO university(name, state) VALUES('Capital University','Ohio');
INSERT INTO university(name, state) VALUES('Cleveland State University','Ohio');
INSERT INTO university(name, state) VALUES('Wright State University','Ohio');
INSERT INTO university(name, state) VALUES('University of Cincinnati','Ohio');
INSERT INTO university(name, state) VALUES('Bowling Green State University (Only UG)','Ohio');
INSERT INTO university(name, state) VALUES('Youngstown State University','Ohio');
INSERT INTO university(name, state) VALUES('Heidelberg University','Ohio');
INSERT INTO university(name, state) VALUES('Tiffin University','Ohio');
INSERT INTO university(name, state) VALUES('The Cleveland Institute of Arts','Ohio');
INSERT INTO university(name, state) VALUES('University of Mount Union','Ohio');
INSERT INTO university(name, state) VALUES('Oregon State University ','Oregon');
INSERT INTO university(name, state) VALUES('Portland State University (Only UG)','Oregon');
INSERT INTO university(name, state) VALUES('Lane Community College','Oregon');
INSERT INTO university(name, state) VALUES('Chemeketa Community College','Oregon');
INSERT INTO university(name, state) VALUES('George Fox University','Oregon');
INSERT INTO university(name, state) VALUES('Oklahoma City University','Oklahoma');
INSERT INTO university(name, state) VALUES('Oklahoma State University - Only UG','Oklahoma');
INSERT INTO university(name, state) VALUES('University of Tulsa - Only UG','Oklahoma');
INSERT INTO university(name, state) VALUES('University of Central Oklahoma','Oklahoma');
INSERT INTO university(name, state) VALUES('Gannon University','Pennsylvania');
INSERT INTO university(name, state) VALUES('University of Scranton','Pennsylvania');
INSERT INTO university(name, state) VALUES('Drexel University - Only GRAD','Pennsylvania');
INSERT INTO university(name, state) VALUES('Muhlenberg College','Pennsylvania');
INSERT INTO university(name, state) VALUES('Wilkes University','Pennsylvania');
INSERT INTO university(name, state) VALUES('Philadelphia University','Pennsylvania');
INSERT INTO university(name, state) VALUES('Thomas Jefferson University','Pennsylvania');
INSERT INTO university(name, state) VALUES('Duquesne University','Pennsylvania');
INSERT INTO university(name, state) VALUES('Mercyhurst University','Pennsylvania');
INSERT INTO university(name, state) VALUES('Juniata College','Pennsylvania');
INSERT INTO university(name, state) VALUES('Saint Francis University','Pennsylvania');
INSERT INTO university(name, state) VALUES('The University of the Arts','Pennsylvania');
INSERT INTO university(name, state) VALUES('Kutztown University','Pennsylvania');
INSERT INTO university(name, state) VALUES('Westminster College','Pennsylvania');
INSERT INTO university(name, state) VALUES('Lebanon Valley College','Pennsylvania');
INSERT INTO university(name, state) VALUES('Harrisburg University of Science and Technology','Pennsylvania');
INSERT INTO university(name, state) VALUES('Indiana University of Pennsylvania','Pennsylvania');
INSERT INTO university(name, state) VALUES('Chatham University','Pennsylvania');
INSERT INTO university(name, state) VALUES('Johnson & Wales University','Rhode Island');
INSERT INTO university(name, state) VALUES('New England Institute of Technology','Rhode Island');
INSERT INTO university(name, state) VALUES('South Dakota State University - Only UG','South Dakota');
INSERT INTO university(name, state) VALUES('Augustana University','South Dakota');
INSERT INTO university(name, state) VALUES('University of South Carolina ','South Carolina');
INSERT INTO university(name, state) VALUES('Anderson University','South Carolina');
INSERT INTO university(name, state) VALUES('Webster University ??? Columbia','South Carolina');
INSERT INTO university(name, state) VALUES('Tennessee Tech University','Tennessee');
INSERT INTO university(name, state) VALUES('University of Tennessee - Knoxville','Tennessee');
INSERT INTO university(name, state) VALUES('Maryville College','Tennessee');
INSERT INTO university(name, state) VALUES('University of Memphis','Tennessee');
INSERT INTO university(name, state) VALUES('Middle Tennessee State University','Tennessee');
INSERT INTO university(name, state) VALUES('University of Houston - Selected Gard Programs*','Texas');
INSERT INTO university(name, state) VALUES('Texas A&M University???Kingsville','Texas');
INSERT INTO university(name, state) VALUES('University of Texas at Arlington','Texas');
INSERT INTO university(name, state) VALUES('University of Houston???Clear Lake','Texas');
INSERT INTO university(name, state) VALUES('Texas Tech University','Texas');
INSERT INTO university(name, state) VALUES('Texas A & M University ','Texas');
INSERT INTO university(name, state) VALUES('Webster University ??? San Antonio','Texas');
INSERT INTO university(name, state) VALUES('East Texas Baptist University','Texas');
INSERT INTO university(name, state) VALUES('Texas Wesleyan University','Texas');
INSERT INTO university(name, state) VALUES('Dallas Baptist University','Texas');
INSERT INTO university(name, state) VALUES('University of Texas at Tyler ','Texas');
INSERT INTO university(name, state) VALUES('U.S. Aviation Academy','Texas');
INSERT INTO university(name, state) VALUES('Midwestern State University','Texas');
INSERT INTO university(name, state) VALUES('Stephen F. Austin State University','Texas');
INSERT INTO university(name, state) VALUES('The University of North Texas','Texas');
INSERT INTO university(name, state) VALUES('North American College','Texas');
INSERT INTO university(name, state) VALUES('Abilene Christian University','Texas');
INSERT INTO university(name, state) VALUES('University of the Incarnate Word of San Antonio','Texas');
INSERT INTO university(name, state) VALUES('Weber State University','Utah');
INSERT INTO university(name, state) VALUES('University of Utah ','Utah');
INSERT INTO university(name, state) VALUES('Snow College','Utah');
INSERT INTO university(name, state) VALUES('Vermont Technical College','Vermont');
INSERT INTO university(name, state) VALUES('SIT Graduate Institute','Vermont');
INSERT INTO university(name, state) VALUES('The University of Vermont','Vermont');
INSERT INTO university(name, state) VALUES('Lyndon Institute ','Vermont');
INSERT INTO university(name, state) VALUES('George Mason University ','Virginia');
INSERT INTO university(name, state) VALUES('West Virginia University - Only UG','Virginia');
INSERT INTO university(name, state) VALUES('Fairfax University','Virginia');
INSERT INTO university(name, state) VALUES('Virginia Polytechnic Institute and State University - Only English', 'Virginia');
INSERT INTO university(name, state) VALUES('Summer','Virginia');
INSERT INTO university(name, state) VALUES('Alderson Broaddus University','Virginia');
INSERT INTO university(name, state) VALUES('Richard Bland College*','Virginia');
INSERT INTO university(name, state) VALUES('Radford University','Virginia');
INSERT INTO university(name, state) VALUES('University of Lynchburg*','Virginia');
INSERT INTO university(name, state) VALUES('Virginia International University','Virginia');
INSERT INTO university(name, state) VALUES('James Madison University','Virginia');
INSERT INTO university(name, state) VALUES('ECPI University*','Virginia');
INSERT INTO university(name, state) VALUES('Stratford University','Virginia');
INSERT INTO university(name, state) VALUES('Virginia Wesleyan University','Virginia');
INSERT INTO university(name, state) VALUES('American National University','Virginia');
INSERT INTO university(name, state) VALUES('Blue Ridge School','Virginia');
INSERT INTO university(name, state) VALUES('Eastern Washington University','Washington');
INSERT INTO university(name, state) VALUES('Washington State University ','Washington');
INSERT INTO university(name, state) VALUES('American University','Washington');
INSERT INTO university(name, state) VALUES('Seattle Central College','Washington');
INSERT INTO university(name, state) VALUES('Gonzaga University','Washington');
INSERT INTO university(name, state) VALUES('University of Washington - Certificate Programs Only','Washington');
INSERT INTO university(name, state) VALUES('City University of Seattle','Washington');
INSERT INTO university(name, state) VALUES('Pacific Lutheran University','Washington');
INSERT INTO university(name, state) VALUES('Western Washington University-Extended Education','Washington');
INSERT INTO university(name, state) VALUES('Lake Washington Institute of Technology','Washington');
INSERT INTO university(name, state) VALUES('Highline College','Washington');
INSERT INTO university(name, state) VALUES('Olympic College','Washington');
INSERT INTO university(name, state) VALUES('Centralia College','Washington');
INSERT INTO university(name, state) VALUES('Edmonds College','Washington');
INSERT INTO university(name, state) VALUES('Community Colleges of Spokane','Washington');
INSERT INTO university(name, state) VALUES('Spokane Falls Community College','Washington');
INSERT INTO university(name, state) VALUES('North Seattle Community College','Washington');
INSERT INTO university(name, state) VALUES('Marshall University ','West Virginia');
INSERT INTO university(name, state) VALUES('Milwaukee School of Engineering','Wisconsin');
INSERT INTO university(name, state) VALUES('University of Wisconsin ??? Stout','Wisconsin');
INSERT INTO university(name, state) VALUES('University of Wisconsin ??? La Crosse','Wisconsin');
INSERT INTO university(name, state) VALUES('University of Wisconsin ??? Platteville','Wisconsin');
INSERT INTO university(name, state) VALUES('Fox Valley Technical Community College','Wisconsin');
INSERT INTO university(name, state) VALUES('Viterbo University','Wisconsin');
INSERT INTO university(name, state) VALUES('Carroll University','Wisconsin');
INSERT INTO university(name, state) VALUES('The Art Institutes','Across USA');

-----------
CREATE SEQUENCE country_id_seq START 1000;

CREATE TABLE country (
	country_id integer PRIMARY KEY DEFAULT nextval('country_id_seq'),
	code varchar(20) NOT NULL,
	name varchar(100) NOT NULL
);

INSERT INTO country(code, name) VALUES('GBR', 'United Kingdom');
INSERT INTO country(code, name) VALUES('USA', 'United States');
INSERT INTO country(code, name) VALUES('NZL', 'New Zealand');
INSERT INTO country(code, name) VALUES('AUS', 'Australia');
INSERT INTO country(code, name) VALUES('CAN', 'Canada');

------------

CREATE SEQUENCE consultancy_id_seq START 2000;

CREATE TABLE consultancy (
	consultancy_id integer PRIMARY KEY DEFAULT nextval('consultancy_id_seq'),
	name varchar(200) NOT NULL
);

INSERT INTO consultancy(name) VALUES('Orange Way');
INSERT INTO consultancy(name) VALUES('FIFO Edu');

------------

CREATE SEQUENCE app_user_id_seq START 3000;

CREATE TABLE app_user (
	app_user_id integer PRIMARY KEY DEFAULT nextval('app_user_id_seq'),
	name varchar(200) NOT NULL,
	username varchar(200) UNIQUE NOT NULL,
	password varchar(200) NOT NULL,
	consultancy_id integer REFERENCES consultancy(consultancy_id),
	country_id integer REFERENCES country(country_id)
);

ALTER TABLE app_user ADD COLUMN role varchar(200) NOT NULL;

-------------

ALTER TABLE student ADD COLUMN consultancy_id integer REFERENCES consultancy(consultancy_id);
ALTER TABLE student ADD COLUMN country_id integer REFERENCES country(country_id);
ALTER TABLE student ADD COLUMN login_email varchar(200);
ALTER TABLE student ADD COLUMN login_password varchar(200);

-------------

DROP TABLE short_listed_universities;

CREATE TABLE short_listed_universities(
	short_listed_universities_id integer PRIMARY KEY DEFAULT nextval('short_listed_universities_id_seq'),
	student_id integer REFERENCES student(student_id),
    university_id integer REFERENCES university(university_id),
    course varchar(250),
    intake_season varchar(100),
    intake_year varchar(10),
    application_fee varchar(250),
    is_waiver_applied boolean,
    waiver_code varchar(250),
    agent varchar(250),
    status varchar(250),
    list_order_id varchar(200)
);

---------------

ALTER TABLE student ADD COLUMN created_by varchar(200);
ALTER TABLE student ADD COLUMN created_date timestamp;
ALTER TABLE student ADD COLUMN modified_by varchar(200);
ALTER TABLE student ADD COLUMN modified_date timestamp;

ALTER TABLE app_user ADD COLUMN created_by varchar(200);
ALTER TABLE app_user ADD COLUMN created_date timestamp;
ALTER TABLE app_user ADD COLUMN modified_by varchar(200);
ALTER TABLE app_user ADD COLUMN modified_date timestamp;

ALTER TABLE consultancy ADD COLUMN created_by varchar(200);
ALTER TABLE consultancy ADD COLUMN created_date timestamp;
ALTER TABLE consultancy ADD COLUMN modified_by varchar(200);
ALTER TABLE consultancy ADD COLUMN modified_date timestamp;

ALTER TABLE country ADD COLUMN created_by varchar(200);
ALTER TABLE country ADD COLUMN created_date timestamp;
ALTER TABLE country ADD COLUMN modified_by varchar(200);
ALTER TABLE country ADD COLUMN modified_date timestamp;

ALTER TABLE education ADD COLUMN created_by varchar(200);
ALTER TABLE education ADD COLUMN created_date timestamp;
ALTER TABLE education ADD COLUMN modified_by varchar(200);
ALTER TABLE education ADD COLUMN modified_date timestamp;

ALTER TABLE exam_scores ADD COLUMN created_by varchar(200);
ALTER TABLE exam_scores ADD COLUMN created_date timestamp;
ALTER TABLE exam_scores ADD COLUMN modified_by varchar(200);
ALTER TABLE exam_scores ADD COLUMN modified_date timestamp;

ALTER TABLE job_details ADD COLUMN created_by varchar(200);
ALTER TABLE job_details ADD COLUMN created_date timestamp;
ALTER TABLE job_details ADD COLUMN modified_by varchar(200);
ALTER TABLE job_details ADD COLUMN modified_date timestamp;

ALTER TABLE short_listed_universities ADD COLUMN created_by varchar(200);
ALTER TABLE short_listed_universities ADD COLUMN created_date timestamp;
ALTER TABLE short_listed_universities ADD COLUMN modified_by varchar(200);
ALTER TABLE short_listed_universities ADD COLUMN modified_date timestamp;

ALTER TABLE status ADD COLUMN created_by varchar(200);
ALTER TABLE status ADD COLUMN created_date timestamp;
ALTER TABLE status ADD COLUMN modified_by varchar(200);
ALTER TABLE status ADD COLUMN modified_date timestamp;

ALTER TABLE student_preferences ADD COLUMN created_by varchar(200);
ALTER TABLE student_preferences ADD COLUMN created_date timestamp;
ALTER TABLE student_preferences ADD COLUMN modified_by varchar(200);
ALTER TABLE student_preferences ADD COLUMN modified_date timestamp;

ALTER TABLE university ADD COLUMN created_by varchar(200);
ALTER TABLE university ADD COLUMN created_date timestamp;
ALTER TABLE university ADD COLUMN modified_by varchar(200);
ALTER TABLE university ADD COLUMN modified_date timestamp;