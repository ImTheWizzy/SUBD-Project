DROP TABLE IF EXISTS Recipe;

CREATE TABLE Recipe (
	RecipeId INTEGER AUTO_INCREMENT NOT NULL,
	Name VARCHAR(50) NOT NULL,
	Category VARCHAR(60) NOT NULL,
	Recipe TEXT NOT NULL,
	Ctime DATETIME NOT NULL
);


