class LoginController < ApplicationController
	def formlogin
	end

	def checklogin
		@dn = Tbluser.dangnhap(params[:user], params[:pass])

		if @dn.blank?
			redirect_to :action => "error"
		else
			redirect_to :action => "succ"
		end
	end

	def succ
	end

	def error
	end
end
