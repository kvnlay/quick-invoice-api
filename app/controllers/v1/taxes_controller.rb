class V1::TaxesController < ApplicationController
  def index
    @taxes = Tax.all

    render json: @taxes, status: :ok
  end
end
