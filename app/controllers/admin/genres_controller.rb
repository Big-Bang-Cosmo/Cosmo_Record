class Admin::GenresController < ApplicationController

    def new
        @genre = Genre.new
    end

	def create
		@genre = Genre.new(genre_params)
        @genre.save
        redirect_to admin_items_new_path
	end

	private

	def genre_params
		params.require(:genre).permit(:genre_name)
	end
end
