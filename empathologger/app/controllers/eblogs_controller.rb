class EblogsController < ApplicationController

  def index # name of method, tied to name of view file
    @eblogs = Eblog.all
  end

  def new
    render :new
  end

  def create
    #security workaround
    # permit the parameters of :author, :title, :content in :eblog
    eblog = params[:eblog].permit(:author, :title, :content)
    Eblog.create(eblog)
    redirect_to "/eblogs"
  end

  def display
    id = params[:id]
    @eblog = Eblog.find(id)
  end



end
