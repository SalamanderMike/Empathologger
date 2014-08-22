class EblogsController < ApplicationController

  def index # name of method, tied to name of view file
    @eblogs = Eblog.all
  end

  def new
    @eblog = Eblog.new
    render :new
  end

  def create
    #security workaround
    # permit the parameters of :author, :title, :content in :eblog
    eblog_params = params.require(:eblog).permit(:author, :title, :content)
    Eblog.create(eblog_params)
    redirect_to eblogs_path
  end

  def show
    id = params[:id]
    @eblog = Eblog.find(id)
    render :show
  end

  def edit
    id = params[:id]
    @eblog = Eblog.find(id)
    render :edit
  end

  def update
    eblog_id = params[:id]
    eblog = Eblog.find(eblog_id)

    updated_params = params.require(:eblog).permit(:author, :title, :content)
    eblog.update_attributes(updated_params)
    redirect_to eblog
  end

  def destroy
    id = params[:id]
    eblog = Eblog.find(id)
    eblog.destroy
    redirect_to eblog
  end

end
