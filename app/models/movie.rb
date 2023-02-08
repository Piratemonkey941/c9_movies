class Movie < ApplicationRecord
    validates :title, presence:true
    validates :director, presence:true
    validates :release_year, presence:true
end
