class CategoryController < ApplicationController
  	def new
  		@category = Category.new
        @all_categories = Category.all
  	end

    def create
        @category = Category.new( category_params )
        if @category.save
            flash[:enter_success] = 'New category to add to the tallying adventure!'
        else
            flash[:enter_error] = 'We could not add a category. Try again.'
        end
        redirect_to new_category_path
    end

  	def show
  		# @one_category = Category.find( one_category_params )
  	end

  	def edit
  	end

  	def update
  	end

  	def destroy
  	end

    private
        def category_params
            params.require(:category).permit(:name, :description, :tally_id, :status_id)
        end

        def one_category_params
            params.require(:id)
        end
end