class AddRecipes < ActiveRecord::Migration[5.2]
	def up
		connection.execute(%q{
			CREATE TABLE "recipes" (
				"name" varchar NOT NULL
			);
		})
	end

	def down 
	end
end
