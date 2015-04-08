class CoursesController < ApplicationController
	def index
		@courses=Course.all
	end
	def new
		@course=Course.new
	end

	def create
		@course=Course.new(course_params)
		if @course.save
			redirect_to root_path
		else
			render :new
		end
	
	end

	private
	def course_params
		params.require(:course).permit(:title,:professor,:class,:credit)
	end	
end
