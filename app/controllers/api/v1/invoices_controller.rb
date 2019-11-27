
class Api::V1::InvoicesController < ApplicationController
  before_action :authenticate_api_v1_user!
  before_action :set_invoice, only: [:show, :update, :destroy]

  def index
    @invoices = current_api_v1_user.invoices
    json_response(@invoices)
  end

  def show
    json_response(@invoice)
  end

  def create
    @invoice = current_api_v1_user.invoices.build(invoice_params)
    @invoice.save
    json_response(@invoice)
  end

  def update
    @invoice.update_attributes(invoice_params)
    head :no_content
  end
  
  def delete
    @invoice.destroy
    head :no_content
  end

  private

  def invoice_params
    params.require(:invoice).permit(:title, :due_date, :status, :amount_paid, :customer_name, :customer_email, :customer_company_name, :due_amount, :user_id)
  end

  def set_invoice
    @invoice = invoice.find(params[:id])
  end
end
