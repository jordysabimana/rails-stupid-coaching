class QuestionsController < ApplicationController
    def ask
    end

    def answer
        # get the question the user asked from params and store it in a variable
        @question = params[:question]
        # create a conditional statement to output a second variable with the coaches answer
        if params[:question] == "I am going to work"
            @answer = "Great"
        elsif params[:question].end_with?("?")
            @answer = "Silly question, get dressed and go to work!" 
        else
            @answer = "I don't care, get dressed and go to work!"
        end
    end
end
