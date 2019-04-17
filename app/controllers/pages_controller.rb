class PagesController < ApplicationController
    def home
        render(plain: "HOMEPAGE")
    end
end