Rails.application.routes.draw do

  root                'permits#home'
  get 'home'      =>  'permits#home'
  get 'help'      =>  'permits#help'
  get 'main'      =>  'permits#main'

end
