Rails.application.routes.draw do

  root                    'permits#home'
  get 'home'          =>  'permits#home'
  get 'help'          =>  'permits#help'
  get 'show_business' =>  'permits#show_business'
  get 'show_permits'  =>  'permits#show_permits'

end
