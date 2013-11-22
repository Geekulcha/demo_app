class MicroblogpostsController < ApplicationController
  before_action :set_microblogpost, only: [:show, :edit, :update, :destroy]

  # GET /microblogposts
  # GET /microblogposts.json
  def index
    @microblogposts = Microblogpost.all
  end

  # GET /microblogposts/1
  # GET /microblogposts/1.json
  def show
  end

  # GET /microblogposts/new
  def new
    @microblogpost = Microblogpost.new
  end

  # GET /microblogposts/1/edit
  def edit
  end

  # POST /microblogposts
  # POST /microblogposts.json
  def create
    @microblogpost = Microblogpost.new(microblogpost_params)

    respond_to do |format|
      if @microblogpost.save
        format.html { redirect_to @microblogpost, notice: 'Microblogpost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @microblogpost }
      else
        format.html { render action: 'new' }
        format.json { render json: @microblogpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microblogposts/1
  # PATCH/PUT /microblogposts/1.json
  def update
    respond_to do |format|
      if @microblogpost.update(microblogpost_params)
        format.html { redirect_to @microblogpost, notice: 'Microblogpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @microblogpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microblogposts/1
  # DELETE /microblogposts/1.json
  def destroy
    @microblogpost.destroy
    respond_to do |format|
      format.html { redirect_to microblogposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microblogpost
      @microblogpost = Microblogpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microblogpost_params
      params.require(:microblogpost).permit(:content, :user_id)
    end
end
