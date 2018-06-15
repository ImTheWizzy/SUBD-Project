class Recipe < ApplicationRecord
    def self.insert(user_id, name, category, description, body)
        sql = sanitize_sql(['INSERT INTO recipes VALUES(NULL, ?, ?, ?, ?, ?)', user_id, name, category, description, body])
        ActiveRecord::Base.connection.execute(sql)
    end
end
