class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    
    def create
        #create new listing
        @listing = Listing.create(listing_params)
    end

    def update
        #update existing listing
    end

    def index
        #show all listings
        @listing = Listings.all
    end

    def edit
        #edit an existing listing
    end

    def destroy
        #delete an existing listing
    end

    def new
        #create a new listing
        @listing = Listing.new
        @breeds = Breed.all
        @sexes = Listing.sexes.keys
    end

    def show
        #show a single listing
    end
    
    private
    
    def set_listing
        @listing = Listing.find(params[:id])
    end

    def listing_params
        params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :date_of_birth, :diet)
    end
end