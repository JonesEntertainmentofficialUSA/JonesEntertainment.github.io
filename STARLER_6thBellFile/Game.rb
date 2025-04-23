#Game

var_HP=450
var_MAXHP=450 
var_level=1
#Starts with level(1) HP.

class Element1 
    attr_accessor :name, :weak, :strong
end

class Element2
    attr_accessor :name, :weak, :strong
end

class Element3
    attr_accessor :name, :weak, :strong
end

class Element4
    attr_accessor :name, :weak, :strong
end

class Element5
    attr_accessor :name, :weak, :strong
end

class Element6
    attr_accessor :name, :weak, :strong
end


################
# PYRO ELEMENT # 
#-------------------------------------------#
# Description of Element 1 class.           #
# Pyro (fire) element class.                #
#-------------------------------------------#
#Pyro Element introduction  #
#---------------------------#
name1 = Element1.new()
name1.name = "Pyro"
#----------------------------#
# Pyro Element Weaknesses    #
#----------------------------#
weakI1 = Element1.new()
weakI1.weak = "Hydro"
weakII1 = Element1.new()
weakII1.weak = "Wind"
weakIII1 = Element1.new()
weakIII1.weak = "Rock"
#---------------------------------------#
# Pyro Element Attack Bonus             #
#---------------------------------------#
strongI1 = Element1.new()
strongI1 = "Nature"
strongII1 = Element1.new()
strongII1 = "Dark"
strongIII1 = Element1.new()
#################
# HYDRO ELEMENT #
#----------------------------------------#
# Description of Element 2 Class.        # 
# Hydro (Water) element class.           #
#----------------------------------------# 
name2 = Element2.new()
name2.name = "Hydro"
#---------------------------#
# Hydro Element Weaknesses  #
#---------------------------#

#--------------------------------------#
# Hydro Element Attack Bonus           #
#--------------------------------------#

puts("--------------------")
puts(":What is your name?:")
puts("--------------------")
Player_Name=gets()

