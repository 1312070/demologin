class Tbluser < ActiveRecord::Base
	attr_accessible :password, :username

	def self.dangnhap(tdn, mk)
		if tdn and mk
			find(:all, :conditions => ['username LIKE ? and password LIKE ?', "%#{tdn}", "#{mk}"])
		else
			find(:all)
		end
	end
end
