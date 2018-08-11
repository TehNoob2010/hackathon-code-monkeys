class ChatSessionsController < ApplicationController

  def new
    Chat_session.new
  end

  def create
    student = Student.find(params[:id])
    course_name = params[:course_name]
    tutor = find_match(course_name)

    chat_session = Chat_session.new(
      student_id: student.id
      tutor_id: tutor.id
      started_at: Time.now
      ended_at: nil
    )

    render :json => {:chat_session => chat_session, :tutor => tutor, :student => student}
  end

  def end_chat(chat_session_id)
    Chat_session.update(chat_session_id, ended_at: Time.now)
  end

  def find_match(course_name)
    course = Course.all.where(name: course_name).order(:score).reverse_order.first
    Tutor.find(course.tutor_id)
  end
end
