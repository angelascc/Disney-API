class Api::V1::MoviesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_movie, only: [ :show, :update, :destroy ]

  def index
    @movies = policy_scope(Movie)
  end

  def show
  end

  def update
    if @movie.update(movie_params)
      render :show
    else
      render_error
    end
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user = current_user
    authorize @movie
    if @movie.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @movie.destroy
    head :no_content
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
    authorize @movie  # For Pundit
  end

  def movie_params
    params.require(:movie).permit(:image, :title, :date_created, :rating)
  end

  def render_error
    render json: { errors: @movie.errors.full_messages },
      status: :unprocessable_entity
  end
end
