class NoticesController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  # GET /notices
  def index
    @notices = Notice.all
  end

  # GET /notices/1
  def show
    @notice = Notice.find(params[:id])
  end

  # GET /notices/new
  def new
    @notice = current_user.notices.new
  end

  # GET /notices/1/edit
  def edit
    @notice = current_user.notices.find(params[:id])
  end

  # POST /notices
  def create
    @notice = current_user.notices.new(notice_params)
    if @notice.save
      redirect_to @notice, notice: 'Notice was successfully created.'  
    else
      render :new 
    end
  end

  # PATCH/PUT /notices/1
  def update
    @notice = current_user.notices.find(params[:id])
    if @notice.update(notice_params)
    redirect_to @notice, notice: 'Notice was successfully updated.'  
    else
      render :edit  
    end
  end

  # DELETE /notices/1
  def destroy
    @notice = current_user.notices.find(params[:id])
    @notice.destroy
      redirect_to notices_url, notice: 'Notice was successfully destroyed.'
  end

  private
   
    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_params
      params.require(:notice).permit(:title, :content)
    end
end
