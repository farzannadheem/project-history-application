class ProjectConversationsController < ApplicationController
  before_action :set_project

  def create
    @conversation = @project.project_conversations.new(conversation_params)
    @conversation.user = current_user

    # Only update status if new_status is present
    if conversation_params[:new_status].present?
      @conversation.old_status = @project.status_before_type_cast
      @project.update(status: conversation_params[:new_status].to_sym)
      @conversation.new_status = @project.status_before_type_cast
    end

    # Only save comment if comment is present
    @conversation.comment = conversation_params[:comment] if conversation_params[:comment].present?

    if @conversation.comment.present? || @conversation.new_status.present?
      if @conversation.save
        redirect_to @project, notice: "Conversation added!"
      else
        redirect_to @project, alert: "Something went wrong."
      end
    else
      # If both comment and new_status are blank, do nothing
      redirect_to @project, alert: "Nothing to submit."
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def conversation_params
    params.require(:project_conversation).permit(:comment, :new_status)
  end
end