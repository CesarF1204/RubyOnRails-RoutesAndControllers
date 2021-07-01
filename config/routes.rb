Rails.application.routes.draw do
  get 'hello' => 'users#hello'
  get 'say/hello' => 'users#sayHello'
  get 'say/hello/joe' => 'users#sayHelloJoe'
  get 'say/hello/michael' => 'users#sayHelloMichael'
  root 'users#index'
  # page visits
  get 'times' => 'users#pageVisit'
  get 'times/restart' => 'users#pageRestart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
