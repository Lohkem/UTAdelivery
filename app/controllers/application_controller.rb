class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :require_login, except: [:index, :show]
  before_action :require_admin, only: [:new, :edit, :create, :update, :destroy]

  private
    def require_login
      unless logged_in?
        flash[:warning] = "ALTO AHI!, para entrar a esta seccion debes ingresar primero :3"
        redirect_to login_path
      end
    end

    def require_admin
      unless is_admin?
        flash[:warning] = "WOO WOOO WOOO, alto ahi rufian, esta es zona de admins!"
        redirect_back fallback_location: root_path
      end
    end
end
