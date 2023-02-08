class MoviesController < ApplicationController
    def index
      @movies = Movie.all
    end
  
    def new
      @movie = Movie.new
    end
  
    def create
      @movie = Movie.new(movie_params)
      if @movie.save
        redirect_to @movie, notice: 'Movie was successfully created.'
      else
        render :new
      end
    end
  
    def show
      @movie = Movie.find(params[:id])
    end
  
    def edit
      @movie = Movie.find(params[:id])
    end
  
    def update
      @movie = Movie.find(params[:id])
      if @movie.update(movie_params)
        redirect_to @movie, notice: 'Movie was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @movie = Movie.find(params[:id])
      @movie.destroy
      redirect_to movies_url, notice: 'Movie was successfully destroyed.'
    end

    def search
        @movies = Movie.where("title LIKE ? OR director LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
      end
  
    private
      def movie_params
        params.require(:movie).permit(:title, :director, :release_year)
      end
  end
  