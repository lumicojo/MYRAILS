Rails.application.routes.draw do

  #this is how add routes to do a test   from here go to people_controler and do format
    resources :people do
      member do
        get "test"
      end
    end



  # root "people#index"
# from here go to people_controler and before the delete  add  def test end



    #THIS is an example how to sent file to user to download the file
  # resources :people
  # root "people#index"
  # get "/zip_download" => "people#zip_download"    #the go to people_controller and under index def Zip_download














  #get "/admin_people_screen" => "people#admin_people_screen"
  # post "/admin_people_screen_test" =>  "people#admin_people_screen_test"

  # resources :organization do
  #   resources :people, shallow: true
  # end
  #   resources :people, shallow: true do
  #     #creating static pages
  #     get "/about_us" => "people#peolpe#about_us"
  #     #(then we create new controller)  rails g controllers pages
  #     get "/about_us" => "pages#about_us"



  # namespace :admin do

  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  #root "posts#index"
end




