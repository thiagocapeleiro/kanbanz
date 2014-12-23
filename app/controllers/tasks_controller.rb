class TasksController < ApplicationController
	def create
		@project = Project.find(params[:project_id])
		@task = @project.tasks.create(tasks_params)
		redirect_to project_path(@project)
	end

	def new 
		@project = Project.find(params[:project_id])
	end
	def show
		@project = Project.find(params[:project_id])
		@task = @project.tasks.find(params[:id])
	end

	def destroy
		@project = Project.find(params[:project_id])
		@task = @project.tasks.find(params[:id])
		@task.destroy
		redirect_to project_path(@project)
	end

	private
	def tasks_params
		params.require(:task).permit(:name,:due_date,:status,:priority)
	end
end
