
class StudentDetails

    def initialize()
        puts("Initializing contends .. ")
    end
    
    def determine_student_grade()
        puts("Enter the Mark of the student :: ")
        markof_student = gets.chomp.to_i   
        grade_response = ""
        if markof_student < 50   
            grade_response = "Student is fail"   
        elsif markof_student >= 50 && markof_student <= 60   
            grade_response = "Student gets D grade"   
        elsif markof_student >= 70 && markof_student <= 80   
            grade_response = "Student gets B grade"   
        elsif markof_student >= 80 && markof_student <= 90   
            grade_response = "Student gets A grade"    
        elsif markof_student >= 90 && markof_student <= 100   
            grade_response = "Student gets A+ grade"
        end
        return grade_response
    end
    
    def determine_student_gender(gende_denote)
        gender = gende_denote == "M" ? "Male" : "Female"
        return gender
    end
end

student_details = StudentDetails.new()

grade_response = student_details.determine_student_grade()
puts("The Grade of the student is :: #{grade_response} ")

student_gender = student_details.determine_student_gender("M")
puts("The Gender of the student is :: #{student_gender} ")


    

  