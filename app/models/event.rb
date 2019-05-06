class Event < ApplicationRecord
	belongs_to :user
	has_many :attendances
	has_many :users, through: :attendances
	validates :start_date, presence: true
	validates :duration, presence: true
	validates :title, presence: true,  length: { minimum: 5 },  length: { maximum: 140 }
	validates :description, presence: true,  length: { minimum: 20 },  length: { maximum: 1000 }
	validates :price, presence: true
	validates :location, presence: true
end
