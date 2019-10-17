class Item < ApplicationRecord
	belongs_to :artist
	belongs_to :label
	belongs_to :genre

	has_many  :reviews, dependent: :destroy

	has_many :discs, dependent: :destroy, inverse_of: :item
	has_many :favorites, dependent: :destroy
    def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end
    #引数で渡されたユーザidがFavoritesテーブル内に存在（exists?）するかどうかを調べます。
    #存在していればtrue、存在していなければfalseを返すようにしています。
	accepts_nested_attributes_for :discs, allow_destroy: true

	attachment :item_image

	validates :artist_id, presence: :true
	validates :label_id, presence: :true
	validates :genre_id, presence: :true

	validates :item_name, presence: :true
	validates :price, presence: :true
	validates :introduction, presence: :true


	def self.search(search)
		if search
			Item.where(['item_name LIKE?', "%#{search}%"])
		else
			Book.all
		end
	end
end
