class ProfilesController < InheritedResources::Base
  before_action :set_user

  private
    def resource
      current_user
    end

    def set_user
      @user = current_user
    end

    def profile_params
      params.require(:user).permit(:email, :first_name, :last_name, :current_password, :password, :password_confirmation)
    end

end
