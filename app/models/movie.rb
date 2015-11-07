class Movie < ActiveRecord::Base
	belongs_to :genre
	belongs_to :actor


	validates :name, presence: true
	validates :name, uniqueness: { case_sensitive: false }
	validates :name, length: {minimum: 1 }
	validates :description, length: { maximum: 250 }
	validates :poster, presence: true

end
