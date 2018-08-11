Rails.application.routes.draw do

    scope '/api' do
        resources :users
        resources :courses
        resources :students
        resources :tutors
        get '/tutors/:id/update_rate/:rating', to: 'tutors#update_rate'
    end
    
    
end
