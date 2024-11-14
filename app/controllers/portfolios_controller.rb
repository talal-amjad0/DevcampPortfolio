class PortfoliosController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource


    def index
        @portfolio_items = Portfolio.all
    end

    def ruby 
        @portfolio_ruby_items = Portfolio.ruby
    end

    def new
        @portfolio_item = Portfolio.new
        3.times {@portfolio_item.technologies.build}
    end

    def edit
     @portfolio
    end

    def show
        @portfolio
    end

    def create
        @portfolio_item = Portfolio.new( params.require(:portfolio).permit(:title, :subtitle,:body, technologies_attributes: [:name]))
        @portfolio_item.set_defaults

        respond_to do |format|
            if @portfolio_item.save
                format.html {redirect_to portfolios_path, notice: "Portfolio item was successfully created."}
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    def update
        @portfolio
        respond_to do |format|
            if @portfolio.update(params.require(:portfolio).permit(:title, :subtitle,:body))
                format.html { redirect_to portfolios_path, notice: "Record was successfully updated." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end

    end

    def destroy
        @portfolio
        @portfolio.destroy

        respond_to do |format|
            format.html {redirect_to portfolios_path}
        end

    end

end
