class CreateRecipes < ActiveRecord::Migration[5.2]
	def change
		execute "
			CREATE TABLE recipe(
				Id INTEGER AUTO_INCREMENT NOT NULL,
				UserId INTEGER NOT NULL,
				Name VARCHAR(50) NOT NULL,
				Category VARCHAR(50) NOT NULL,
				Description TEXT NOT NULL,
				Body TEXT NOT NULL,
				PRIMARY KEY(Id),
				FOREIGN KEY(UserId) REFERENCES users(id) ON DELETE CASCADE
			);
		"
	end
end
