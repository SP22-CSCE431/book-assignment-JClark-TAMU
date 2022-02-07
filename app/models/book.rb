class Book < ApplicationRecord
    has_and_belongs_to_many :users
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :publishedDate, presence: true
    
end
