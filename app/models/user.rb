class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  def gravatar_url
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    "https://gravatar.com/avatar/#{gravatar_id}.png"
  end

  def display_name
    name = [first_name, last_name].compact.join ' '
    name.present? ? name : email
  end

  protected

    # We're letting them set up an account with just their email - we'll set their password when they confirm
    def password_required?
      confirmed? ? super : false
    end
end
