module AnswersHelper
	def answer_for_question(question, program, year)
  		a = Answer.find_by program: @program, question: question, year: @year 
  		a.nil? ? "" : a
  	end
end
