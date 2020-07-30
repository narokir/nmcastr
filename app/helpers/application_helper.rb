module ApplicationHelper
  require "faker"


  def profile_img
    # current_user.profile_img if defined? current_user.profile_img
    # else
    profile_img = "https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
  end

  def full_title(page_title = "")
    base_title = "Castme.com"

    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def bootstrap_class_for(flash_type)
    case flash_type
    when "success"
      "alert-success"
    when "error"
      "alert-danger"
    when "alert"
      "alert-warning"
    when "notice"
      "alert-info"
    else
      flash_type.to_s
    end
  end

  def devise_error_messages!
    return "" unless devise_error_messages?
    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",     :count => resource.errors.count,     :resource => resource.class.model_name.human.downcase)
    html = <<-HTML
    <div class="alert alert-danger">
      <h3>#{sentence}</h3>
      <ul>#{messages}</ul>
    </div>
HTML
    html.html_safe
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

  # Check if castingcalls have main image
  def check_img(main_image)
    if main_image.present?
      main_image
    else
      main_image = "https://via.placeholder.com/700x500"
    end
  end
end
