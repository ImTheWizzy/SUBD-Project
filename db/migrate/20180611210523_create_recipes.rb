require 'RawSQL.rb'
class CreateRecipes < ActiveRecord::Migration[5.2]
	def change
		RawSQL.new('../../lib/sql/recipe.sql').result(some_date: '2018-06-014 22:54:34')
	end
end
