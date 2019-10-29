class Item < ApplicationRecord
	belongs_to :artist
	belongs_to :label
	belongs_to :genre

	has_many :order_items
	has_many :cart_items, dependent: :destroy
	has_many  :reviews, dependent: :destroy
	has_many  :arrivals, dependent: :destroy
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
	validates :item_image, presence: :ture

	acts_as_paranoid

	def self.search(search)
		if search
			Item.where(['item_name LIKE ?', "%#{search}%"])
		else
			Item.all
		end
	end

	def self.create_all_ranks
		Item.find(Favorite.group(:item_id).order('count(item_id) desc').limit(5).pluck(:item_id))
	end

end
