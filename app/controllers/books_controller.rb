class BooksController < ApplicationController
    protect_from_forgery execept:[:destroy]

    def show
        @book = Book.find(params[:id])
        respond_to do |format|
            format.html
            format.JSON
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        respond_to do |format|
            format.html { redirect_to "/" }
            format.json { head :no_content }
        end
    end
end
