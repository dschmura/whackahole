module ApplicationHelper
def bootstrap_class_for flash_type
  { success: "alert-success", error: "alert-error", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
end

def flash_messages(opts = {})
  flash.each do |msg_type, message|
    concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do
      concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
        concat message
    end)
  end
  nil
end


  def site_name
    t :site_name
  end

  # Returns the full title on a per-page basis.
  def page_title
    if @page_title.nil?
      "#{params[:controller].titleize} | " + (t :site_name)
    else
      "#{@page_title} | " + (t :site_name)
    end
  end


  def flash_class(level)
    case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end
end
