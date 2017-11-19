class SearchController < ApplicationController
  # def search
  #   # Use params[:query] to perform the search
  # end

  def foos
    search do
      Foo.where :name => params[:q]
    end
  end

  def bars
    search do
      Bar.where :title => params[:q]
    end
  end

  private

  def search2(&block)
    if params[:q]
      @article= yield if block_given?

      respond_to do |format|
        format.html # resources.html.erb
        format.json { render json: @article }
      end
    else
      redirect_to root_url, :notice => 'No search query was specified.'
    end
  end
end
