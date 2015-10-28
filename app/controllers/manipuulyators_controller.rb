class ManipuulyatorsController < ApplicationController
  before_action :set_manipuulyator, only: [:show, :edit, :update, :destroy]

  # GET /manipuulyators
  # GET /manipuulyators.json
  def index
    # @manipuulyators = Manipuulyator.all
    @manipuulyators = Manipuulyator.ordering.page(params[:page])
  end

  # GET /manipuulyators/1
  # GET /manipuulyators/1.json
  def show
  end

  # GET /manipuulyators/new
  def new
    @manipuulyator = Manipuulyator.new
  end

  # GET /manipuulyators/1/edit
  def edit
  end

  # POST /manipuulyators
  # POST /manipuulyators.json
  def create
    @manipuulyator = Manipuulyator.new(manipuulyator_params)

    respond_to do |format|
      if @manipuulyator.save
        format.html { redirect_to @manipuulyator, notice: 'Manipuulyator was successfully created.' }
        format.json { render :show, status: :created, location: @manipuulyator }
      else
        format.html { render :new }
        format.json { render json: @manipuulyator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manipuulyators/1
  # PATCH/PUT /manipuulyators/1.json
  def update
    respond_to do |format|
      if @manipuulyator.update(manipuulyator_params)
        format.html { redirect_to @manipuulyator, notice: 'Manipuulyator was successfully updated.' }
        format.json { render :show, status: :ok, location: @manipuulyator }
      else
        format.html { render :edit }
        format.json { render json: @manipuulyator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manipuulyators/1
  # DELETE /manipuulyators/1.json
  def destroy
    @manipuulyator.destroy
    respond_to do |format|
      format.html { redirect_to manipuulyators_url, notice: 'Manipuulyator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manipuulyator
      @manipuulyator = Manipuulyator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manipuulyator_params
      params[:manipuulyator].permit(:name, :description, :foto)
    end
end
