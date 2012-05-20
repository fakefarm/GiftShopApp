class ProductsController < ApplicationController
  def index
		@products = Product.all
  end

  def show
  end

  def new
		@product = Product.new
  end
	
	def create
		item = Product.create(params[:product])
		if item.save
			flash[:notice] = "Your product has been added"
			redirect_to products_url
		else
			flash[:warning] = "Not saved"
			render new
		end
	end

  def edit
  end
end
