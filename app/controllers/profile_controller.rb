class ProfileController < ApplicationController
	layout 'dashboard'
	before_action 'breadcrumb'
	before_action 'set_admin'
	def index

	end

	def update
		respond_to do |format|
			if @admin.update(admin_params)
				flash[:success] = 'Tu cuenta fue actualizada exitosamente'
				format.html { redirect_to profile_index_url  }
			else
				format.html { render :index }
			end
		end
	end

	private

	def set_admin
		@admin = Admin.find(current_admin.id)
	end

	def admin_params
		params.require(:admin).permit(:name, :last_name, :job, :email)
	end

	def breadcrumb
		add_breadcrumb '<i class="fa fa-dashboard"></i> Home'.html_safe, root_path, :title => "Volver al inicio"
		add_breadcrumb 'Mi Cuenta'

	end

end
