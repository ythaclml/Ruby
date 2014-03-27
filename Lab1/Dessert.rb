class Dessert
  @@count = 0
    def initialize(name, calories)
      # YOUR CODE HERE
      @name=name
      @size=0
      @calories=calories
      @@count = @@count +1
    end
    
    def healthy?
      # YOUR CODE HERE
      if(@calories < 200) 
        return true
      else
        return false
      end
      
    end
    
    def delicious?
      # YOUR CODE HERE
      return true
    end
    
    def to_s
      # YOUR CODE HERE
      return "Name: #{@name } Calories: #{@calories } Size:#{@size }  "
    end

    def setName (name)
      @name = name
    end

    def setCalories (calories)
      @calories = calories
    end

    def setSize (size)
      @size = size
    end

    def getName ()
      return @name
    end

     def getCalories ()
      return @calories
    end

    def getSize()
      return @size
    end
end

class JellyBean < Dessert
    def initialize(name, calories, flavor)
      # YOUR CODE HERE
      super(name,calories)
      @flavor = flavor
    end

    def setFlavor (flavor)
      @flavor = flavor
    end

    def getFlavor()
      return @flavor
    end

    def delicious?
      super
      if(@flavor == "black licorice")
        return false
      end
    end
end

prueba = Dessert.new("tiramisu",300)
puts prueba.to_s
prueba.setSize(5)
puts prueba.to_s

prueba2 = JellyBean.new("Torta",200,"vanilla")
prueba2.setSize(6)
puts prueba2.to_s
puts prueba2.delicious?
