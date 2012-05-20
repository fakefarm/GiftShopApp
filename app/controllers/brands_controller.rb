class BrandsController < ApplicationController
  def index
		@brands = Brand.all
  end

  def show
  end

  def new
	@brand = Brand.new
  end
	
	def create
		@brand = Brand.create(params[:brand])
		@brand.save
		redirect_to brands_url
	end

  def edit
		@brand = Brand.find(params[:id])
  end
	
	def update
		@brand = Brand.update_attributes(params[:id])
		redirect_to brands_url
	end
end
