class StudentController < ApplicationController
layout 'student'

def dashboard
	
	@user=User.find(current_user)
	@user.studies(@user.id)
end

def profile
end

def notification
end

def search
end

def setting
end

end
