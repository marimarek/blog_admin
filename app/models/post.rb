class Post < ActiveRecord::Base
	belongs_to :category
	has_many :comments
	
	validates :tittle, presence: true, length: { maximum: 50, too_long: "%{count} jest maksymalnie dozwolone."}
	validates :text, presence: true
	validates_associated :category
end
