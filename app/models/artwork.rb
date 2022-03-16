class Artwork < ApplicationRecord
	has_one_attached :image
	validates :title, presence: true
	validates :location, presence: true
	validates :medium, presence: true
	default_scope { order(created_at: 'DESC') }
end
