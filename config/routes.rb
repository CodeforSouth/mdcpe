Rails.application.routes.draw do

  root                          'permits#home'
  get 'home'                =>  'permits#home'
  get 'show_permits/:name'  =>  'permits#show_permits', as: 'show_permits'

end
