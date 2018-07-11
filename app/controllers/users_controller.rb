class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @form_url = signup_path
  end

  def create
    @user = User.new(user_params)
    decorate_user @user
    if @user.save
      log_in @user
      flash[:success] = "Cuenta creada exitosamente, bienvenido %s!" % @user.name
      redirect_to @user
    else
      flash.now[:danger] = @user.errors.full_messages
      @form_url = signup_path
      render 'new'
    end
  end

  protected
    def decorate_user(user)
    end

    def user_params
      params
        .require(:user)
        .permit(
          :name,
          :email,
          :password,
          :password_confirmation
        )
    end
end
