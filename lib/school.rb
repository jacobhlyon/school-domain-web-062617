class School

	attr_accessor :name, :roster

	def initialize(name)
		@roster = Hash.new(0)
		@name = name
	end

	def add_student(student_name, grade)
		if @roster.has_key?(grade) == false
			@roster[grade] = [student_name]
		else
			@roster[grade] << student_name
		end
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		# sorted_roster = @roster.values.sort!
		# @roster[grade] = sorted_roster

		@roster.sort_by {| grade, student_name | [student_name.sort!] }
		@roster

		# @roster[grade][student_name.sort!]
	end

end