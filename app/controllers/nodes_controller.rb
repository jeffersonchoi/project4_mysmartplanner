class NodesController < ApplicationController
  def autocomplete
    render json: Node.search(params[:query], autocomplete: true, limit: 10).map(&:node_name)
  end


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
