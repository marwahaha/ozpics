class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:seller).permit(:firstname, :lastname, :email, :password, :password_confirmation, :website)
  end

  def account_update_params
    params.require(:seller).permit(:firstname, :lastname, :email, :password, :password_confirmation, :current_password, :website, :avatar_image)
  end
end