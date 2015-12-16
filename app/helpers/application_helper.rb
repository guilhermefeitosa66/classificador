module ApplicationHelper
  include PacientsHelper
  
  def shorten(text)
    if text.nil?
      return ""
    else
      return "#{text.truncate(27)}..."
    end
  end
end
