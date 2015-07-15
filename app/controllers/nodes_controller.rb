class NodesController < ApplicationController
  # def autocomplete
  #   render json: Node.search(params[:query], autocomplete: true, limit: 10).map(&:node_name &:subfeature)
  # end


  def index

    if params[:search].present?
      @nodes = Node.search params[:search]
    else
      @nodes = Node.all
    end
  end

  def show

    @comment = []
    @photo = []
    @rating = []
    @node = Node.find(params[:id])
    @activities = Yelp.client.search(@node.node_name)

    # @activities.businesses.each do |activity|
    #   @comment <<  activity.snippet_text
    #   @photo << activity.snippet_image_url
    #   @rating << activity.rating_img_url
    # end




  end
end
