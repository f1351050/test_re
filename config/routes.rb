Rails.application.routes.draw do
  
  get 're_page/index' => "re_page#index"
  post 're_page/create' => "session#create"

  get 're_page/conf'
  post 're_page/conf' => "re_page#create"

  get 're_page/re_end'
  get 're_page/mail_conf_end'
end
