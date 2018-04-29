class ApachelogsController < ApplicationController
  before_action :set_apachelog, only: [:show, :edit, :update, :destroy]
  permits :ipadress, :time, :method, :status, :bite, :url, :useragent

  # GET /apachelogs
  def index
    @apachelogs = Apachelog.all
  end

  # GET /apachelogs/1
  def show
  end

  # GET /apachelogs/new
  def new
    @apachelog = Apachelog.new
  end

  # GET /apachelogs/1/edit
  def edit
  end

  # POST /apachelogs
  def create(apachelog)
    @apachelog = Apachelog.new(apachelog)

    if @apachelog.save
      redirect_to @apachelog, notice: 'Apachelog was successfully created.'
    else
      render :new
    end
  end

  # PUT /apachelogs/1
  def update(apachelog)
    if @apachelog.update(apachelog)
      redirect_to @apachelog, notice: 'Apachelog was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /apachelogs/1
  def destroy
    @apachelog.destroy

    redirect_to apachelogs_url, notice: 'Apachelog was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apachelog(id)
      @apachelog = Apachelog.find(id)
    end
end
