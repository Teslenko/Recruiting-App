class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy, :autocomplete]

  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all
    @vacancies = Vacancy.all
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end


######################################################################

  def search
    # @pets = Pet.ransack(description_cont: params[:q]).result(distinct: true)  #то по чем он ищет
    @pets = Pet.ransack(name_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(position_2_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(skills_2_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(expirience_2_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(company_2_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(salary_2_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(birth_date_2_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(skype_2_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(telephone_2_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(city_2_cont: params[:q]).result(distinct: true)
    # @pets = Pet.ransack(eng_lev_2_cont: params[:q]).result(distinct: true)
    respond_to do |format|
      format.html{}
      format.json{}
    end
  end
#######################################

  def autocomplete
    # byebug
    @pets= Pet.ransack(name: params[:q]).result(distinct: true).limit(5)

    # if user_signed_in?&&current_user.admin?
    #   @users = User.ransack(email_cont: params[:q]).result(distinct: true).limit(5)
    # end
    respond_to do |format|
      format.html{}
      format.json {}
    end
  end
#########################################################################

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Candidate was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: 'Candidate was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Candidate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:name, :description, :image, :position_2, :skills_2, :expirience_2, :company_2, :salary_2, :birth_date_2, :skype_2, :telephone_2, :city_2, :eng_lev_2)
    end
end
