class Api::V1::TaxesController < ApplicationController
  before_action :set_tax, only: [:show, :update, :destroy]

  # GET /taxes
  def index
    @taxes = current_api_v1_user.taxes
    json_response(@taxes)
  end

  # GET /taxes/1
  def show
    json_response(tax)
  end

  # POST /taxes
  def create
    @tax = current_api_v1_user.taxes.build(tax_params)
    @tax.save
    json_response(tax)
  end

  # PATCH/PUT /taxes/1
  def update
    @tax.update(tax_params)
    head :no_content
  end

  # DELETE /taxes/1
  def delete
    @tax.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_tax
      @tax = Tax.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_params
      params.fetch(:tax, {})
    end
end
