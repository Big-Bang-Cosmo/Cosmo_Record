class User::DeliveriesController < ApplicationController
	def index
		@deliveries = Delivery.all
	end
end
