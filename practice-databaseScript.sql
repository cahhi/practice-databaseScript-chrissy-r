START TRANSACTION;
DROP TABLE IF EXISTS readers, books, reviews;

CREATE TABLE readers (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    email VARCHAR(70) NULL DEFAULT 'N/A',
    password VARCHAR(200) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE books (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    summary VARCHAR(800) NULL DEFAULT 'N/A',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    );
    
CREATE TABLE reviews (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL REFERENCES books(id),
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL, 
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO readers (username, email, password) VALUES ('crodgers', 'crodgers@test.com', 'reader123');
INSERT INTO readers (username, email, password) VALUES ('jrodgers', 'jrodgers@test.com', 'reader456');
INSERT INTO readers (username, email, password) VALUES ('cnorris', 'cnorris@test.com', 'reader789');

INSERT INTO books (title, author, summary) VALUES ('Shady Hollow', 'Juneau Black', 'Reporter Vera Vixen has a nose for the news, so when she catches wind that the death might be murder, she resolves to get to the bottom of the case no matter where it leads. As t he fox stirs up still waters, she exposes more than one mystery and discovers that additional lives are in jeopardy. The investigations unearth more about this town than anyone ever suspected. It seems someone in the Hollow will do anything to keep her from solving the murder and soon it will take all of Veras cunning and quickness to crack the case');
INSERT INTO books (title, author, summary) VALUES ('Legends and Lattes', 'Travis Baldree', 'After a lifetime of bounties and bloodshed, Viv is hanging up her sword for the last time. The battle-weary orc aims to start fresh, opening the first ever coffee shop in the city of Thune. But rivals old and new stand in the way of success - not to mention the fact that no one has the faintest idea what coffee actually is. If Viv wants to put the blade behind her and make her plans a reality, she will not be able to go it alone. But the true rewards of the uncharted path are the travelers you meet along the way. And whether drawn together by ancient magic, a flaky pastry. or a freshly brewed cup, they may become partners, family, and something deeper than she ever could have dreamed.');
INSERT INTO books (title, author, summary) VALUES ('The Baby Dragon Cafe', 'A.T. Qureshi', 'When Saphira opens her cafe for customers with pet baby dragons, she is not expecting it to be quite so hard to keep the fire burning. But her young dragon patrons keep incinerating the furniture, which means selling coffee is not covering her cost. Local heart-throb Aiden is a gardener, though this disobedient baby dragon is a major distraction from his beloved plants. However, the cafe gives him an idea - he will ask Saphira to train his dragon, and pay her enough to keep the cafe float. They know they are the answer to each others problems, but happy-go-lucky Saphira and gorgeous-but-grumpy Aiden could not be more different. Can they find a way to work together - and maybe even ignite some fire of their own?');

INSERT INTO reviews (book_id, title, content) VALUES (1, 'Shady Hollow', 'This book was amazing!');
INSERT INTO reviews (book_id, title, content) VALUES (2, 'Legends and Lattes', 'This book was a fun read!');
INSERT INTO reviews (book_id, title, content) VALUES (3, 'The Baby Dragon Cafe', 'This book was so cute!');

COMMIT TRANSACTION;