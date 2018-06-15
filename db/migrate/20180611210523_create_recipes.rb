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
				PRIMARY KEY(id),
				FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
			);
		"
	end
end
