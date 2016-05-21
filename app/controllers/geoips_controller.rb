class GeoipsController < ApplicationController
  #before_action :set_geoip, only: [:show, :edit, :update, :destroy]

#  respond_to :html

  def index
    @geoips = Geoip.all
    respond_with(@geoips)
  end

  #def show
  #  respond_with(@geoip)
  #end

  #def new
  #  @geoip = Geoip.new
  #  respond_with(@geoip)
  #end

  #def edit
  #end

  #def create
  #  @geoip = Geoip.new(geoip_params)
  #  @geoip.save
  #  respond_with(@geoip)
  #end

  #def update
  #  @geoip.update(geoip_params)
  #  respond_with(@geoip)
  #end

  #def destroy
  #  @geoip.destroy
  #  respond_with(@geoip)
  #end

  private
    def set_geoip
      @geoip = Geoip.find(params[:id])
    end

    def geoip_params
      params.require(:geoip).permit(:ipaddress, :latitude, :longitude)
    end
end
