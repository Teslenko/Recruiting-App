class UploadsController < ApplicationController
  before_action :authenticate_user!

  def avatar
    avatar = Avatar.new(body: params[:attachments].first)

    if avatar.save
      avatar_url = avatar.body.thumb.url
      current_user.update(avatar_id: avatar.id, avatar_url: avatar_url)
      render json: Oj.dump([avatar_url])
    else
      render json: {msg: avatar.errors.full_messages.join(", ")}
    end
  end
end
