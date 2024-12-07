class OrderMainsController < ApplicationController
  before_action :set_order_main, only: %i[ show edit update destroy ]

  # GET /order_mains or /order_mains.json
  def index
    @order_mains = OrderMain.all
  end

  # GET /order_mains/1 or /order_mains/1.json
  def show
  end

  # GET /order_mains/new
  def new
    @order_main = OrderMain.new
  end

  # GET /order_mains/1/edit
  def edit
  end

  # POST /order_mains or /order_mains.json
  def create
    @order_main = OrderMain.new(order_main_params)

    respond_to do |format|
      if @order_main.save
        format.html { redirect_to @order_main, notice: "Order main was successfully created." }
        format.json { render :show, status: :created, location: @order_main }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_main.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_mains/1 or /order_mains/1.json
  def update
    respond_to do |format|
      if @order_main.update(order_main_params)
        format.html { redirect_to @order_main, notice: "Order main was successfully updated." }
        format.json { render :show, status: :ok, location: @order_main }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_main.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_mains/1 or /order_mains/1.json
  def destroy
    @order_main.destroy!

    respond_to do |format|
      format.html { redirect_to order_mains_path, status: :see_other, notice: "Order main was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_main
      @order_main = OrderMain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_main_params
      params.require(:order_main).permit(:user_id, :total, :status)
    end
end
