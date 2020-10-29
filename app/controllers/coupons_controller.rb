class CouponsController < ApplicationController
    
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
       # byebug
        
    end

    def create
        #byebug
        new_coupon = Coupon.create(store: params[:store],
                                   coupon_code: params[:coupon_code])
        redirect_to coupon_path(new_coupon.id)
    end

end