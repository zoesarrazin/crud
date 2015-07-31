Rails.application.routes.draw do
  get '/crud/forms'=> 'application#forms'
  get'/crud/:id'=> 'application#show'
  
  get '/new'=>'application#new'
  
  get '/crud/:id/edit' => 'application#edit'
  get '/crud/:id/update' => 'application#update'
  
  get '/crud'=>'application#index'
  
end
