Rails.application.routes.draw do
  get '' => 'cars#create'
  get '/cars/create'
  get '/cars/status'
  get '/cars/accelerate'
  get '/cars/brake'
  get '/cars/lights'
  get '/cars/ebrake'
  get '/cars/color'
end
