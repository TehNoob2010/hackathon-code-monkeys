Rails.application.routes.draw do

    scope '/api' do
        resources :users
        resources :courses
        resources :students
        resources :tutors
        get '/tutors/:id/update_rate/:rating', to: 'tutors#update_rate'
        get '/students/:id/update_rate/:rating', to: 'students#update_rate'
    end
    
    
end
