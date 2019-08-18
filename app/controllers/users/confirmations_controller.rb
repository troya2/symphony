# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController

  protected

  # Continue the sign up flow - have the user set their password
  def after_confirmation_path_for(resource_name, resource)
    token = resource.send(:set_reset_password_token)
    edit_password_url(resource, reset_password_token: token)
  end
end
