class Admin::CuisinesController < ApplicationController
  before_action :load_admin_store
  before_action :set_admin_cuisine, only: [:show, :edit, :update, :destroy]
  layout "admin"

  # GET /admin/cuisines
  # GET /admin/cuisines.json
  def index
    @admin_cuisines = @admin_store.cuisine.all
  end

  # GET /admin/cuisines/1
  # GET /admin/cuisines/1.json
  def show
  end

  # GET /admin/cuisines/new
  def new
    @admin_cuisine = @admin_store.cuisine.new
  end

  # GET /admin/cuisines/1/edit
  def edit
  end

  # POST /admin/cuisines
  # POST /admin/cuisines.json
  def create
    @admin_cuisine = @admin_store.cuisine.new(admin_cuisine_params)

    respond_to do |format|
      if @admin_cuisine.save
        format.html { redirect_to admin_store_path(@admin_store.id), success: 'Cuisine was successfully created.' }
        format.json { render :show, status: :created, location: @admin_cuisine }
      else
        format.html { render :new }
        format.json { render json: @admin_cuisine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/cuisines/1
  # PATCH/PUT /admin/cuisines/1.json
  def update
    respond_to do |format|
      if @admin_cuisine.update(admin_cuisine_params)
        format.html { redirect_to admin_store_path(@admin_store.id), success: 'Cuisine was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_cuisine }
      else
        format.html { render :edit }
        format.json { render json: @admin_cuisine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/cuisines/1
  # DELETE /admin/cuisines/1.json
  def destroy
    @admin_cuisine.destroy
    respond_to do |format|
      format.html { redirect_to admin_store_path(@admin_store.id), notice: 'Cuisine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_cuisine
      @admin_cuisine = @admin_store.cuisine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_cuisine_params
      params.fetch(:admin_cuisine, {}).permit(:name, :price, :store_id, :image)
    end

    # Load Parent Obj.
    def load_admin_store
      @admin_store = Admin::Store.find(params[:store_id])
    end
end
