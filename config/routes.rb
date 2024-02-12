Rails.application.routes.draw do
  
  get 're_page/index' => "re_page#index"
  post 're_page/create' => "re_page#create"

end
