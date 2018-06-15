class CreateRecipes < ActiveRecord::Migration[5.2]
	def change
		execute "
			CREATE TABLE Recipe(
				Id INTEGER AUTO_INCREMENT NOT NULL,
				UserId INTEGER NOT NULL,
				Name VARCHAR(50) NOT NULL,
				Category VARCHAR(50) NOT NULL,
				Description TEXT NOT NULL,
				Recipe TEXT NOT NULL
			);
		"
	end
end
