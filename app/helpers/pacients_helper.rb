module PacientsHelper
  def current_pacient
    Pacient.where(id: session[:pacient]).first
  end

  def current_pacient_id
    session[:pacient]
  end
end
