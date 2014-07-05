module ApplicationHelper

  def notice_message_here
    unless flash.empty?
      [:notice, :alert].each do | key |
        return flash[key]  if flash[key].present?
      end
    end
  end

end
