class Review < ApplicationRecord
	validates :name, presence: true
	validates :content, presence: true
	paginates_per 5
end

