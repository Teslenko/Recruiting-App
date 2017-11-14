class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # @articles = Article.search(params[:term])
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end



  def self.search
    @article = Article.ransack(title: params[:q]).result(distinct: true)
    @article = Article.ransack(text: params[:q]).result(distinct: true)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      all
    end
    # @books = Book.ransack(title_cont: params[:q]).result(distinct: true)
    # @locations = Location.ransack(name_cont: params[:q]).result(distinct: true)
    # @genres = Genre.ransack(genre_name_cont: params[:q]).result(distinct: true)
  end

  def authenticate_user!
    unless current_user
      if request.xhr?
        render json: {msg: "Вы не авторизованы"}, status: 403
      else
        redirect_to root_path
      end
    end
  end

  def user_not_authorized
    if request.xhr?
      render json: {msg: "Нет прав на данное действие"}, status: 403
    else
      redirect_to root_path
    end
  end

  def user_banned?
    if current_user && current_user.banned?
      if request.xhr?
        render json: {msg: "Вы заблокированы"}, status: 403
      else
        sign_out
        redirect_to root_path
      end
    end
  end

  def home
  end

  def contact
  end

  def help
  end

  private
  def article_params
    params.require(:article).permit(:title, :position, :skills, :expirience, :status)
  end

end