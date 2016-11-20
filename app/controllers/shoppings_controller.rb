class ShoppingsController < ApplicationController
  before_action :set_shopping, only: [:process_shopping, :finish_shopping, :destroy, :finish_order, :reopen_order]
  before_action :set_order, only: [:finish_order, :reopen_order]

  def start_shopping
    @shopping = Shopping.start(current_user)

    redirect_to shopping_url(@shopping)
  end

  def process_shopping

  end


  def finish_shopping
    @shopping.finish_shopping(shopping_params)
  end

  # POST /shoppings
  # POST /shoppings.json
  def create
    @shopping = Shopping.new(shopping_params)

    respond_to do |format|
      if @shopping.save
        format.html { redirect_to @shopping, notice: 'Shopping was successfully created.' }
        format.json { render :show, status: :created, location: @shopping }
      else
        format.html { render :new }
        format.json { render json: @shopping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoppings/1
  # DELETE /shoppings/1.json
  def destroy
    @shopping.destroy
    respond_to do |format|
      format.html { redirect_to shoppings_url, notice: 'Shopping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping
      @shopping = Shopping.find(params[:id])
    end

    def set_order
      @order = Order.find(order_params[:order_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_params
      params.require(:shopping).permit(finished_orders: [])
    end

end
