Rails.application.routes.draw do

    scope '/api' do
        resources :users
        resources :courses
        resources :students
        resources :tutors
        #get '/tutors/:id/update_rate/:tutor_rate/:course_rate', to: 'tutors#update_rate'
        # get '/students/:id/update_rate/:rating', to: 'students#update_rate'

        post '/user', to: 'users#create'

        scope '/tutors/:id' do
            get '/rate', to: 'tutors#update_rate'
        end

        scope '/student/:id' do
            get '/rate', to: 'students#update_rate'
        end

        # queryParams must contain ?course_name=""&student_id=""&description=""
        post '/start_session', to: 'chat_sessions#create'
    end


end
