class NodesController < ApplicationController
  def index
    @nodes = Node.all
  end

  def show
    @node = Node.find(params[:id])
  end
end
