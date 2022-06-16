class Blog < ApplicationRecord
    validates :title, :content, presence: true
    validates :title, :content, uniqueness: true
    validates :title, length: { minimum: 10 }
end
