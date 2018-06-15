class Recipe < ApplicationRecord
    def self.insert(id, user_id, name, category, description, body)
        sql = sanitize_sql(['INSERT INTO recipes VALUES(?, ?, ?, ?, ?, ?)', id, user_id, name, category, description, body])
        ActiveRecord::Base.connection.execute(sql)
    end
end
