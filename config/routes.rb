Rails.application.routes.draw do
  get 'detect_cookie', to: 'cookies#detect'
end
