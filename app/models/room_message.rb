class RoomMessage < ApplicationRecord
  belongs_to :room, inverse_of: :room_messages
  belongs_to :user

  delegate :gravatar_url, :display_name, to: :user, prefix: true

  def as_json(options = {})
  	super(options).merge(user_avatar_url: user_gravatar_url, user_display_name: user_display_name)
  end
end
