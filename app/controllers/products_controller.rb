
class ProductsController < ApplicationController

  skip_before_action :verify_authenticity_token

  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end


  # def login
  #   cookies[:name] = { value: "XJ-122", expires: 1.hour }

  #   flash[:notice] = 'you have been loged in!'

  #   redirect_to @product
  # end


  def create
    # debugger
    @product = Product.new(product_params)
    if @product.save
      session[:current_user_id] = @product.id
      debugger
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end



  def edit
  
  end


  def update
    if @product.update(product_params)
      flash[:notice] = "valuse updated"
      redirect_to @product
    else
      flash[:alert] = "valuse not updated"
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @product.destroy
    redirect_to products_path
  end


  private
   
  def set_product
    @product = Product.find(params[:id])

  # rescue ActiveRecord::RecordNotFound
  #   flash[:error] = 'not found'
  #   redirect_to @product
 
  end
    
  def product_params
    params.expect(product: [ :name] )
  end
end

