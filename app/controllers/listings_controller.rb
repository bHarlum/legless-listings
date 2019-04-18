class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    before_action :set_breeds_and_sexes, only: [:new, :edit]
    
    def create
        #create new listing
        @listing = Listing.create(listing_params)
        if @listing.errors.any?
            set_breeds_and_sexes
            render("new")
        else
            redirect_to listings_path
        end
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
    end

    def show
        #show a single listing
    end
    
    private
    
    def set_listing
        @listing = Listing.find(params[:id])
    end

    def set_breeds_and_sexes
        @breeds = Breed.all
        @sexes = Listing.sexes.keys
    end

    def listing_params
        params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :date_of_birth, :diet)
    end
end