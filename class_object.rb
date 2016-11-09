class Cat
    def set_name=(cat_name)
        @name = cat_name
    end
    
    def get_name
        return @name
    end
    def set_owner=(owner_name)
        @owner_name = owner_name
    end
    
    def get_owner
        return @owner_name
    end
    
    def meow
        return "meeeeeeowwwwww!"
    end    
end # end class

my_cat = Cat.new
my_cat.set_name = "Kitty"
catname = my_cat.get_name

my_cat.set_owner = "Nomi"
ownername = my_cat.get_owner


puts "#{ownername} has a cat named #{catname}. #{catname} says #{my_cat.meow}"