class Api::V1::ItemsController < ApplicationController
  before_action :authenticate_api_v1_user!
  before_action :set_item, only: [ :update, :destroy]
  before_action :set_invoice, only: [:create]

  def create
    @item = @invoice.items.build(item_params)
    @item.save
    json_response(@item)
  end

  def update
    @item.update_attributes(item_params)
    head :no_content
  end
  
  def delete
    @item.destroy
    head :no_content
  end

  private

  def item_params
    params.require(:item).permit(:tax_rate, :tax_type, :user_id)
  end

  def set_item
    @item = item.find(params[:id])
  end

  def set_invoice
    @invoice = invoice.find(params[:invoice_id])
  end
end
