class ProjectsController < ApplicationController
	def index
		@project = Project.all
	end
	def new
		@project = Project.new
	end
	def create
		@project = Project.create(project_params)
		redirect_to projects_path
	end
	def edit
		@project = Project.find(params[:id])
	end
	def update
		@project = Project.find(params[:id])
		@project.update(project_params)
		redirect_to @project
	end

	def show
		@project = Project.find(params[:id])
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end



	# STRONG PARAMETERS
	private
		def project_params
			params.require(:project).permit(:name)
		end

end
