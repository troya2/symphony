#
# This controller is a convenient place to add pages that are visible to non-logged in users
#
class PublicController < ApplicationController
  skip_before_action :authenticate_user!

  def about
  end
end
