class Comment < ActiveRecord::Base
	belongs_to :post
	
	validates :user_name, presence: true, length: { maximum: 50, too_long: "%{count} jest maksymalnie dozwolone."}
	validates :text, presence: true
	validates_associated :post
end
