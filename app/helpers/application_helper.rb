module ApplicationHelper
  def appname
    Figaro.env.APP_NAME || 'World Symphony'
  end

	def gravatar_url(user)
	  gravatar_id = Digest::MD5::hexdigest(user.email).downcase
	  url = "https://gravatar.com/avatar/#{gravatar_id}.png"
	end
end
