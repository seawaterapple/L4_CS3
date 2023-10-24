class UsesController < ApplicationController
  before_action :set_use, only: %i[ show edit update destroy ]

  # GET /uses or /uses.json
  def index
    @uses = Use.all
  end

  # GET /uses/1 or /uses/1.json
  def show
  end

  # GET /uses/new
  def new
    @use = Use.new
  end

  # GET /uses/1/edit
  def edit
  end

  # POST /uses or /uses.json
  def create
    @use = Use.new(use_params)

    respond_to do |format|
      if @use.save
        format.html { redirect_to use_url(@use), notice: "Use was successfully created." }
        format.json { render :show, status: :created, location: @use }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @use.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uses/1 or /uses/1.json
  def update
    respond_to do |format|
      if @use.update(use_params)
        format.html { redirect_to use_url(@use), notice: "Use was successfully updated." }
        format.json { render :show, status: :ok, location: @use }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @use.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uses/1 or /uses/1.json
  def destroy
    @use.destroy

    respond_to do |format|
      format.html { redirect_to uses_url, notice: "Use was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_use
      @use = Use.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def use_params
      params.require(:use).permit(:uid, :pass)
    end
end
