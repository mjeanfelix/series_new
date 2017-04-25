class WritersController < ApplicationController
  before_action :set_write, only: [:show, :edit, :update, :destroy]

  before_action :authorize, except: [:index, :show]

  def index
    @writers = Write.all
  end


  def show
  end


  def new
    @write = Write.new
  end


  def edit
  end


  def create
    @write = Write.new(house_params)

    respond_to do |format|
      if @write.save
        format.html { redirect_to @write, notice: 'Write was successfully created.' }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to @house, notice: 'Write was successfully updated.' }
        format.json { render :show, status: :ok, location: @house }
      else
        format.html { render :edit }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @write.destroy
    respond_to do |format|
      format.html { redirect_to write_url, notice: 'Writer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_write
      @write = Write.find(params[:id])
    end


    def write_params
      params.require(:write).permit(:name, :genre, :resume, :education)
    end
end
