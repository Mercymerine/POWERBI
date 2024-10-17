CREATE DATABASE google_playstore;

USE google_playstore;

CREATE TABLE Google_PlayStore_Apps (
    App VARCHAR(255),
    Category VARCHAR(100),
    Rating DECIMAL(2, 1),
    Reviews INT,
    Size VARCHAR(10),
    Installs VARCHAR(20),
    Type VARCHAR(10),
    Price DECIMAL(5, 2),
    Content_Rating VARCHAR(20),
    Genres VARCHAR(100),
    Last_Updated DATE,
    Current_Ver VARCHAR(10),
    Android_Ver VARCHAR(20)
);

CREATE TABLE Google_PlayStore_Reviews (
	App VARCHAR(255),
    Translated_review VARCHAR(400),
    Sentiment VARCHAR(15),
    Sentiment_Polarity DECIMAL(4,3),
    Sentiment_Subjectivity DECIMAL(4,3)
);

ALTER TABLE google_playstore_apps
	MODIFY COLUMN Current_Ver VARCHAR(30);

INSERT INTO Google_PlayStore_Apps (App, Category, Rating, Reviews, Size, Installs, Type, Price, Content_Rating, Genres, Last_Updated, Current_Ver, Android_Ver)
VALUES 
('Photo Editor & Candy Camera & Grid & ScrapBook', 'ART_AND_DESIGN', 4.1, 159, '19M', '10,000+', 'Free', 0.00, 'Everyone', 'Art & Design', '2018-01-07', '1.0.0', '4.0.3 and up'),
('Coloring book moana',	'ART_AND_DESIGN', 3.9,	967, '14M',	'500,000+',	'Free',	0.00,	'Everyone',	'Art & Design;Pretend Play', '2018-01-15',	'2.0.0', '4.0.3 and up'),
('U Launcher Lite â€“ FREE Live Cool Themes, Hide Apps', 'ART_AND_DESIGN', 4.7,	87510, '8.7M', '5,000,000+', 'Free', 0.00, 'Everyone', 'Art & Design', '2018-08-01', '1.2.4', '4.0.3 and up'),
('Sketch - Draw & Paint', 'ART_AND_DESIGN', 4.5, 215644, '25M', '50,000,000+', 'Free', '0.00', 'Teen', 'Art & Design', '2018-06-08', 'Varies with device', '4.2 and up'),
('Pixel Draw - Number Art Coloring Book', 'ART_AND_DESIGN', 4.3, 967, '2.8M', '100,000+', 'Free', '0.00', 'Everyone', 'Art & Design;Creativity', '2018-06-20', '1.1', '4.4 and up'),
('Paper flowers instructions', 'ART_AND_DESIGN', 4.4, 167, '5.6M', '50,000+', 'Free', '0.00', 'Everyone', 'Art & Design', '2017-03-26', '1', '2.3 and up');

SELECT * FROM Google_Playstore_Apps;


INSERT INTO Google_PlayStore_Reviews (App, Translated_Review, Sentiment, Sentiment_Polarity, Sentiment_Subjectivity) 
VALUES 
	('10 Best Foods For You', 'I like eat delicious food. That I''m cooking food myself, so 10 Best Foods helps lot, also Best Before Shelf Life', 'Positive', 1, 0.533),
    ('10 Best Foods For You', 'This helps eating healthy exercise regular basis', 'Positive', 0.25, 0.288),
    ('1800 Contacts - Lens Store', 'It''s expensive I expected I thought I''d saving money, cutting middle man, waaaaay convenient doctor''s office.', 'Negative', -0.30, 0.50),
    ('1800 Contacts - Lens Store', 'Easy step step process correct information took 5 minutes place order', 'Positive', 0.433, 0.833),
	('8 Ball Pool', 'null', 'null', 0.00, 0.00);

SELECT * FROM Google_PlayStore_Reviews;