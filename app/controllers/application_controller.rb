class ApplicationController < ActionController::Base
  before_action :authenticated?, :current_customer, :current_cart

  def current_customer
    if session[:user_id]
      @customer = User.find(session[:user_id])
    end
  end

  def current_cart
    if login?
      @cart = @user.cart
    else
      if session[:cart]
        @cart = Cart.find(session[:cart])
      else
        @cart = Cart.create
        session[:cart] = @cart.id
      end
    end
  end

  def login?
    !!current_customer
  end

  def authenticated?
    path  = Rails.application.routes.recognize_path(request.path)
    # redirect_to_a products_path unless login?
    # redirect_to action: 'index' unless login?
    if path[:controller] == "pages"
      redirect_to :controller => 'products', :action => 'index' unless login? 
    end
  end
end
