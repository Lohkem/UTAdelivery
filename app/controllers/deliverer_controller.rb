class DelivererController < UsersController
  def decorate_user(user)
    user.role = User.roles[:deliverer]
  end

  def signup_path
    deliverers_signup_path
  end
end
