module Animal
	def my_method
		puts "i am a #{self.class}"
	end

	def method2
		puts "My dog's name is spike"
	end
end


class Dog 
	include Animal
	def method1
		puts "i am faithful"
		
	end
end

Dog.new.method1