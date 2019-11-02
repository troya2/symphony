module ApplicationHelper
  def appname
    Figaro.env.APP_NAME || 'World Symphony'
  end
end
