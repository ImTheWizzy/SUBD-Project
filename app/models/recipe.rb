class Recipe < ApplicationRecord
    def self.insert(UserId, Name, Category, Description, Body)
        sql = sanitize_sql(['INSERT INTO recipe VALUES(NULL, ?, ?, ?, ?, ?)', UserId, Name, Category, Description, Body])
        ActiveRecord::Base.connection.execute(sql)
    end
end
