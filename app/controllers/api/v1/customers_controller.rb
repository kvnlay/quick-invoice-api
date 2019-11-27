class Api::V1::CustomersController < ApplicationController
  before_action :authenticate_api_v1_user!
  before_action :set_customer, only: [:show, :update, :destroy]

  def index
    @customers = current_api_v1_user.customers
    json_response(@customers)
  end

  def show
    json_response(@customer)
  end

  def create
    @customer = current_api_v1_user.customers.build(customer_params)
    @customer.save
    json_response(@customer)
  end

  def update
    @customer.update_attributes(customer_params)
    head :no_content
  end
  
  def delete
    @customer.destroy
    head :no_content
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :company_name, :user_id)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
