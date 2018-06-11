class CreateRecipes < ActiveRecord::Migration[5.2]
	def up
		connection.execute(%q{
			DROP TABLE IF EXISTS "recipes";

			CREATE TABLE "recipes" (
				"name" varchar PRIMARY KEY NOT NULL,
				"category" varchar NOT NULL,
				"description" text,
				"recipe" text NOT NULL,
				"created_at" datetime NOT NULL
			);
		})
	end

	def down 
		connection.execute(%q{
			DROP TABLE IF EXISTS "recipes";
			})
	end
end
