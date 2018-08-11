Rails.application.routes.draw do

    scope '/api' do
        resources :users
        resources :courses
        resources :students
        resources :tutors

    end
end
