class Recipe < ApplicationRecord
    def self.insert(user_id, name, category, description, body, cook_time, servings, image_url)
        sql = sanitize_sql(['INSERT INTO recipes VALUES(NULL, ?, ?, ?, ?, ?, ?, ?, ?)', user_id, name, category, description, body, cook_time, servings, image_url])
        ActiveRecord::Base.connection.execute(sql)
    end 
end
