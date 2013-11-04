class PogsController < ApplicationController
  before_action :set_pog, only: [:show, :edit, :update, :destroy]

  # GET /pogs
  def index
    @pogs = Pog.all
  end

  # GET /pogs/1
  def show
  end

  # GET /pogs/new
  def new
    @pog = Pog.new
  end

  # GET /pogs/1/edit
  def edit
  end

  # POST /pogs
  def create
    @pog = Pog.new(pog_params)

    if @pog.save
      redirect_to @pog, notice: 'Pog was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /pogs/1
  def update
    if @pog.update(pog_params)
      redirect_to @pog, notice: 'Pog was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /pogs/1
  def destroy
    @pog.destroy
    redirect_to pogs_url, notice: 'Pog was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pog
      @pog = Pog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pog_params
      params[:pog]
    end
end
