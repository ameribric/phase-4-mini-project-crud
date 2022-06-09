class SpicesController < ApplicationController

    #GET
    def index
        spice = Spice.all
        spice
        render json: spice

    end

    # #GET
    # def show
    #     spice = Spice.find_by(id: params[:id])
    #     spice
    #     render json: spice
    # end

    #POST
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    #PATCH
    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice
    end
    
#DELETE
    def destroy
        spice = Spice.find(params[:id])
        spice.destroy
        head :no_content
    end

    private 

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
