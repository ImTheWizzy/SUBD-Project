class CreateRecipes < ActiveRecord::Migration[5.2]
	def change
		execute "
			CREATE TABLE recipes(
				id INTEGER NOT NULL,
				user_id INTEGER NOT NULL,
				name VARCHAR(50) NOT NULL,
				category VARCHAR(50) NOT NULL,
				description TEXT NOT NULL,
				body TEXT NOT NULL,
				cook_time VARCHAR(50) NOT NULL,
				servings INTEGER NOT NULL,
				image_url VARCHAR(300) NOT NULL,
				PRIMARY KEY(id),
				FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
			);
		"
	end
end
