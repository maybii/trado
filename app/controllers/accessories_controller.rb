class AccessoriesController < ApplicationController

    # Update accessory
    #
    # Modal trigger for displaying a form to update the accessory selection on the product page
    def update 
        render :partial => 'products/accessories/update', :format => [:js], :locals => { :accessory_id => params[:accessory_id], :sku_id => params[:sku_id] }
    end

end