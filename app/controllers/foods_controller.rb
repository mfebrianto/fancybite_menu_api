# this is where action for foods is executed
class FoodsController < ApplicationController
  def index
    render text: Food.all.to_json, status: :ok
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
