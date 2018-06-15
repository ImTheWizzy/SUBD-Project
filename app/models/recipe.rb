class Recipe < ApplicationRecord
    def self.insert(user_id, name, category, description, body, cook_time, servings, image_url)
        query = sanitize_sql(['INSERT INTO recipes VALUES(NULL, ?, ?, ?, ?, ?, ?, ?, ?)', user_id, name, category, description, body, cook_time, servings, image_url])
        ActiveRecord::Base.connection.execute(query)
    end

    validates :user_id, :name, :category, :description, :body, :cook_time, :servings, :image_url, presence: { message: "You need to fill all required fields" }
end
