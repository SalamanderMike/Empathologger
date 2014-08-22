class CommentsController < ApplicationController
  def index
    eblog_id = params[:eblog_id]
    @eblog = Eblog.find(eblog_id)
    @comments = @eblog.comments
  end

  def new
    eblog_id = params[:eblog_id]
    @eblog = Eblog.find(eblog_id)
    @comment = @eblog.comments.new
  end

  def create
    eblog_id = params[:eblog_id]
    @eblog = Eblog.find(eblog_id)

    new_comment = params.require(:comment).permit(:title, :body)
    @comment = @eblog.comments.create(new_comment)
  end

  def show
    eblog_id = params[:eblog_id]
    @eblog = Eblog.find(eblog_id)
    @comment = @eblog.comments.find(params[:id])
  end
end
