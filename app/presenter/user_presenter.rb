class UserPresenter < BasePresenter
  presents :user
  delegate :username, to: :user

  def avatar
    site_link image_tag("avatars/#{avatar_name}", class: "avatar")
  end

  def linked_name
    site_link(user.full_name.present? ? user.full_name : user.username)
  end

  def bio
    handle_none user.bio do
      markdown(user.bio)
    end
  end

  private

  def handle_none(value)
    if value.present?
      yield
    else
      h.content_tag :span, "None given", class: "none"
    end
  end

  def site_link(content)
    h.link_to_if(user.url.present?, content, user.url)
  end

  def avatar_name
    if user.avatar_image_name.present?
      user.avatar_image_name
    else
      "default.png"
    end
  end
end