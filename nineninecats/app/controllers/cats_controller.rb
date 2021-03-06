class CatsController < ApplicationController

    def index
        @cats = Cat.order(:name)
        render :index
    end

    def show
        @cat = Cat.find(params[:id])

        if @cat
            render :show
       else
            render :index
           
       end

    end

    def new

        render :new

    end

    def edit
        
        render :edit

    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            render :show
        else 
            render :new
        end
    end

    def update
        @cat = Cat.find_by(id: params[:id])
        if @cat.update(cat_params)
            redirect_to cat_url(@cat)
        else
            render :edit
        end
    end

    def destroy
        @cat = Cat.find_by(id: params[:id])
        cat.destroy
        render :index

    end

    private
    def cat_params
        params.require(:cat).permit(:birth_date, :name, :color, :sex, :description)
    end
end
