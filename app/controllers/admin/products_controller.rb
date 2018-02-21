class Admin::ProductsController < ApplicationController

  layout "admin"
  before_action :authenticate_user!
  before_action :admin_required
  def index
    @products = Product.all.order("position ASC")
  end
 def new
   @product = Product.new
 end
 def create
   @prodcut = Product.new(product_params)
   if @prodcut.save
     redirect_to admin_products_path
   else
     render :new
   end
 end
 def move_up
     @product = Product.find(params[:id])
     @product.move_higher
     redirect_to :back
   end

   def move_down
     @product = Product.find(params[:id])
     @product.move_lower
     redirect_to :back
   end
 def edit
   @product = Product.find(params[:id])
 end

 def update
   @product = Product.find(params[:id])

   if @product.update(product_params)
     redirect_to admin_products_path
   else
     render :edit
   end
 end
 def destroy
  @product = Product.find(params[:id])
  @product.destroy
  redirect_to admin_products_path
end




private

def product_params
  params.require(:product).permit(:title, :description, :quantity, :price, :image)
end
end
