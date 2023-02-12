# # Write a class called Unicorn
# # it should have a dynamic name attribute
# # it should have a color attribute, that is silver by default
# # it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

# class Unicorn
#     def initialize(name)
#         @name = name
#         @color = "silver"
#     end
   
#     def say(corn_speak)
#         p "*~* #{corn_speak} *~*"
#     end
# end

# unicorn1 = Unicorn.new("Gary")
# unicorn1.say("Woah nelly")
# unicorn1.say("Holy crap this is neat, we're all great")



# #  Write a class called Vampire
# #  it should have a dynamic name attribute
# #  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
# #  it should have a thirsty attribute, that is true by default
# #  it should have a drink method. When called, the thirsty attribute changes to false

# class Vampire
#     def initialize(name, pet = "bat")
#         @name = name
#         @pet = pet    
#         @thirsty = true
#     end
 
#     def drink
#         @thirsty = false
#     end

# end

# vamp1 = Vampire.new("Drac", "Pit Viper")
# p vamp1
# vamp1.drink
# p vamp1

# #  Write a Dragon class
# #  it should have a dynamic name attribute (string)
# #  it should have a dynamic rider attribute (string)
# #  it should have a dynamic color attribute (string)
# #  it should have a is_hungry attribute that is true by default
# #  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

# class Dragon
#     attr_reader :is_hungry 
#    def initialize(name, rider, color)
#     @name = name.to_s
#     @rider = rider.to_s 
#     @color = color.to_s
#     @is_hungry = true
#    end 

#    def eat_times(meals)
#         if meals >= 4
#             @is_hungry = false
#         end
#     end
# end

# dragon1 = Dragon.new("Myraxes", "Rhaenys", "Red")
# p dragon1

# dragon1.eat_times(5)
# p dragon1

# dragon2 = Dragon.new("Balerion", "Aegon", "Black")
# p dragon2
# dragon2.eat_times(3)
# p dragon2.is_hungry
# dragon2.eat_times(5)
# p dragon2.is_hungry


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_accessor :age
    def initialize(name, disposition = "Hobbitish")
        @name = name.to_s
        @disposition = disposition.to_s
        @age = 0
        @is_adult = false #33 = adult if age >= 33 is_adult needs to be true
        @is_old = false #101 = old if age >= 101 is_old needs to be true (is_adult too)
        @has_ring = false
    end

    def celebrate_birthday
        @age = @age +1
    end

    # def big_birthday
    #     @age = @age + 50
    # end

    # if the age is over 33 the @is_adult instance variable needs to be adjusted to true. How do we adjust the instance variable without directly modifying it? A method needs to be called to adjust a variable. 

    def age
        if @age >= 101
            @is_old = true && @is_adult = true
        else @age >=33
            @is_adult = true
        end
    end

    def name 
        if @name == "Frodo"
            @has_ring = true
        end
    end
end

hobbit1 = Hobbit.new("Pip", "Jolly")
p hobbit1
# p hobbit1.age = 79
33.times{hobbit1.celebrate_birthday}
p hobbit1
# hobbit1.celebrate_birthday
p hobbit1.age
p hobbit1

# hobbit2 = Hobbit.new("Pippin")
# p hobbit2
# hobbit2.age = 103
# # hobbit2.big_birthday
# # p hobbit2.big_birthday
# # p hobbit2.big_birthday
# p hobbit2.age
# p hobbit2

# hobbit3 = Hobbit.new("Frodo", "Meak")
# p hobbit3.name
# hobbit3.age = 37
# # hobbit3.big_birthday 
# hobbit3.age
# p hobbit3

# 33.times{hobbit1.celebrate_birthday}

# Right now the issue I'm having is that the methods need to be called in order to change the instance variables. Is this what we're supposed to be attempting to achieve? I'm under the impression that the instance variables should automatically change without having to call the method but that just might be crazy talk there. 