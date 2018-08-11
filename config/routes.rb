Rails.application.routes.draw do

    scope '/api' do
        resources :users
        resources :courses
        resources :students
        resources :tutors
        resources :chat_sessions
        #get '/tutors/:id/update_rate/:tutor_rate/:course_rate', to: 'tutors#update_rate'
        # get '/students/:id/update_rate/:rating', to: 'students#update_rate'

        post '/user', to: 'users#create'
        post '/tutor', to: 'tutors#create'
        post '/student', to: 'students#create'

        scope '/tutors/:id' do
            post '/rate', to: 'tutors#update_rate'
            get '/rate', to: 'tutors#update_rate'
        end

        scope '/students/:id' do
            get '/rate', to: 'students#update_rate'
        end

        # queryParams must contain ?course_name=""&student_id=""&description=""
        get '/create_session', to: 'chat_sessions#create'
        
        get '/end_session', to: 'chat_sessions#end_chat'
        post '/end_session', to: 'chat_sessions#end_chat'
    end


end
