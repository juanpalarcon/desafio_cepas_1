class JobtitlesController < ApplicationController
  before_action :set_jobtitle, only: %i[ show edit update destroy ]
  before_action :authorize_admin!

  # GET /jobtitles or /jobtitles.json
  def index
    @jobtitles = Jobtitle.all
  end

  # GET /jobtitles/1 or /jobtitles/1.json
  def show
  end

  # GET /jobtitles/new
  def new
    @jobtitle = Jobtitle.new
  end

  # GET /jobtitles/1/edit
  def edit
  end

  # POST /jobtitles or /jobtitles.json
  def create
    @jobtitle = Jobtitle.new(jobtitle_params)

    respond_to do |format|
      if @jobtitle.save
        format.html { redirect_to @jobtitle, notice: "Jobtitle was successfully created." }
        format.json { render :show, status: :created, location: @jobtitle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobtitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobtitles/1 or /jobtitles/1.json
  def update
    respond_to do |format|
      if @jobtitle.update(jobtitle_params)
        format.html { redirect_to @jobtitle, notice: "Jobtitle was successfully updated." }
        format.json { render :show, status: :ok, location: @jobtitle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobtitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobtitles/1 or /jobtitles/1.json
  def destroy
    @jobtitle.destroy
    respond_to do |format|
      format.html { redirect_to jobtitles_url, notice: "Jobtitle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobtitle
      @jobtitle = Jobtitle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobtitle_params
      params.require(:jobtitle).permit(:name)
    end
end
