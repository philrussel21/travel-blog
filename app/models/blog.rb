class Blog < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates_associated :comments
    validates :title, presence: true, length: {maximum: 60}
    validates :location, presence: true
    validates :content, presence: true, length: {minimum: 50}
end
