module ApplicationHelper

  def log_in_log_out
    if session[:user]
      content_tag(:p, "Logged in as #{session[:user]}") +
      form_tag('/logout', method: :delete) do
        submit_tag 'logout'
      end
    else
      link_to 'login', '/login'
    end
  end

end
