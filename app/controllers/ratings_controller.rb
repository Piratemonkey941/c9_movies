class RatingsController < ApplicationController


    def index
        @movie = Movie.find(params[:movie_id])
        @ratings = @movie.ratings
      end

    def new
        @movie = Movie.find(params[:movie_id])
        @rating = @movie.ratings.build
      end

    def create
        @movie = Movie.find(params[:movie_id])
        @rating = @movie.ratings.build(rating_params)

        if @rating.save
            redirect_to movie_ratings_path(@movie), notice: 'Rating was successfully created.'
        else
            render :new
        end
    end

    private

    def rating_params
        params.require(:rating).permit(:score)
    end
end
