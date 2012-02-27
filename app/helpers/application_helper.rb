module ApplicationHelper
  def flash_class(flash)
    css = []
    case flash
    when :alert
      css.push "alert-warning"
    when :error
      css.push "alert-danger"
    when :notice
      css.push "alert-info"
    when :success
      css.push "alert-success"
    else
      css.push "alert-" + flash.to_s
    end

    css.join
  end
end
