class Review < ApplicationRecord
	validates :name, presence: true
	validates :content, presence: true
	validates :subtitle, length: { maximum: 0}
	paginates_per 5
	default_scope { order(created_at: 'DESC') }
end

