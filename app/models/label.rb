class Label < ApplicationRecord
	has_many :items,dependent: :destroy

	validates :label_name, uniqueness: :true
end
