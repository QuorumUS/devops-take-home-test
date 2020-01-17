class LegislatorsController < ApplicationController
  before_action :set_legislator, only: [:show, :update, :destroy]

  # GET /legislators
  def index
    @legislators = Legislator.all

    render json: @legislators
  end

  # GET /legislators/1
  def show
    render json: @legislator
  end

  # POST /legislators
  def create
    @legislator = Legislator.new(legislator_params)

    if @legislator.save
      render json: @legislator, status: :created, location: @legislator
    else
      render json: @legislator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /legislators/1
  def update
    if @legislator.update(legislator_params)
      render json: @legislator
    else
      render json: @legislator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /legislators/1
  def destroy
    @legislator.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legislator
      @legislator = Legislator.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def legislator_params
      params.fetch(:legislator, {})
    end
end
