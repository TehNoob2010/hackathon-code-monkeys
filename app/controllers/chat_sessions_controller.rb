class ChatSessionsController < ApplicationController
  def new
    @chat_session = ChatSession.new
  end

  def create
    student = Student.find(params[:student_id].to_i)
    student_user = User.find(student.id)
    course_name = params[:course_name]
    tutor = find_match(course_name)
    tutor_user = User.find(tutor.id)

    @chat_session = ChatSession.new(
      student_id: student.id,
      tutor_id: tutor.id,
      started_at: Time.now,
      ended_at: nil
    )
    @chat_session.save

    render :json => {
      :chat_session => @chat_session,
      :tutor => {
        :user => tutor_user,
        :tutor => tutor
        },
      :student => {
        :user => student_user,
        :student => student
      }
    }, :callback => params[:callback]
  end

  def end_chat(chat_session_id)
    ChatSession.update(chat_session_id, ended_at: Time.now)
  end

  def find_match(course_name)
    course = Course.all.where(name: course_name).order(:score).reverse_order.first
    Tutor.find(course.tutor_id)
  end
end
