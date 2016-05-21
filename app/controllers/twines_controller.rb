require 'json'
class TwinesController < ApplicationController
#  before_action :set_twine, only: [:show, :edit]
  before_action :basic_auth, only: [:create]

  # GET /twines
  # GET /twines.json
  def index
    @twines = Twine.all
	json = `/var/www/cgi-cmd/Twine-Day-stdout.py`
    @chart_data = JSON.parse(json)
  end

  # POST /twines.json
  def create
    @twine = Twine.new(twine_params)

    respond_to do |format|
      if @twine.save
        format.html { redirect_to @twine, notice: 'Twine was successfully created.' }
        format.json { render :show, status: :created, location: @twine }
      else
        format.html { render :new }
        format.json { render json: @twine.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twine
      @twine = Twine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twine_params
      #params[:twine]
		params.permit(:locate, :temp)
    end
 	def basic_auth
		authenticate_or_request_with_http_basic do |user,pass| 
			user = "twine" && pass == "KoKoKo333"
		end
	end
end
