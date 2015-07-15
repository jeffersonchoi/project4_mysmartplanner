class NodesController < ApplicationController
  def index

    if params[:search].present?
      @nodes = Node.search params[:search]
    else
      @nodes = Node.all
    end
  end

  def show
    @node = Node.find(params[:id])
  end
end
