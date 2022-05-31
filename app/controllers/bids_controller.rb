class BidsController < ApplicationController
  def index
    matching_bids = Bid.all

    @list_of_bids = matching_bids.order({ :created_at => :desc })

    matching_products = Product.all

    @list_of_products = matching_products.order({ :created_at => :desc })
    # @product_title = list_of_products.first.title

    render({ :template => "bids/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_bids = Bid.where({ :id => the_id })

    @the_bid = matching_bids.at(0)

    render({ :template => "bids/show.html.erb" })
  end

  def create
    the_bid = Bid.new
    the_bid.product_id = params.fetch("query_product_id")
    the_bid.sender_id = params.fetch("query_sender_id")
    the_bid.reciever_id = params.fetch("query_reciever_id")
    the_bid.status = params.fetch("query_status")

    if the_bid.valid?
      the_bid.save
      redirect_to("/bids", { :notice => "Bid created successfully." })
    else
      redirect_to("/bids", { :alert => the_bid.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_bid = Bid.where({ :id => the_id }).at(0)

    
    #the_bid.product_id = params.fetch("query_product_id")
    #the_bid.sender_id = params.fetch("query_sender_id")
    #the_bid.reciever_id = params.fetch("query_reciever_id")
    the_bid.status = params.fetch("query_status")

    if the_bid.valid?
      the_bid.save
      redirect_to("/bids/#{the_bid.id}", { :notice => "Bid updated successfully."} )
    else
      redirect_to("/bids/#{the_bid.id}", { :alert => the_bid.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_bid = Bid.where({ :id => the_id }).at(0)

    the_bid.destroy

    redirect_to("/bids", { :notice => "Bid deleted successfully."} )
  end
end
