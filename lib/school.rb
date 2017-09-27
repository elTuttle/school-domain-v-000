class School

attr_reader :name, :grade

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
      if @roster[grade] == nil
        @roster[grade] = []
      end
      @roster[grade] << name
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      temp_array =@roster.sort
      temp_hash = {}
      temp_array.each do |grade, name|
        name.sort.each do |names|
          if temp_hash[grade] == nil
            temp_hash[grade] = []
          end
          temp_hash[grade] << names
        end
      end

      @roster = temp_hash

    end

    def roster
      @roster
    end

end
