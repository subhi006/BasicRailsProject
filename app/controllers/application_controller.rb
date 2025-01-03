class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  


  # before_action :cheak_login

  # def cheak_login
  #    if cookies[:login] == "XJ-122"
    
  #    else
  #      redirect_to products_path, notice: 'login first'
  #    end
  # end

  private

  def current_product
      @current_product ||= user.find_by(id: session[:current_product_id]) if session[:current_product_id]
  end

end
