class SearchController < ApplicationController
  # def search
  #   # Use params[:query] to perform the search
  # end

  def foos
    search do
    #   Foo.where :description => params[:q]
      Foo.where :name => params[:q]
      Foo.where :position_2 => params[:q]
      # Foo.where :skills_2 => params[:q]
      # Foo.where :expirience_2 => params[:q]
      # Foo.where :company_2 => params[:q]
      # Foo.where :salary_2 => params[:q]
      # Foo.where :birth_date_2 => params[:q]
      # Foo.where :skype_2 => params[:q]
      # Foo.where :telephone_2 => params[:q]
      # Foo.where :city_2 => params[:q]
      # Foo.where :eng_lev_2 => params[:q]
    end
  end

  def bars
    search do
      # Bar.where :description => params[:q]
      Bar.where :name => params[:q]
      Bar.where :position_2 => params[:q]
      # Bar.where :skills_2 => params[:q]
      # Bar.where :expirience_2 => params[:q]
      # Bar.where :company_2 => params[:q]
      # Bar.where :salary_2 => params[:q]
      # Bar.where :birth_date_2 => params[:q]
      # Bar.where :skype_2 => params[:q]
      # Bar.where :telephone_2 => params[:q]
      # Bar.where :city_2 => params[:q]
      # Bar.where :eng_lev_2 => params[:q]

    end
  end

  private

 def search2(&block)

    if params[:q]
      @pet= yield if block_given?

      respond_to do |format|
        format.html # resources.html.erb
        format.json { render json: @pet}
      end
    else
      redirect_to root_url, :notice => 'No search query was specified.'
    end
  end
end
