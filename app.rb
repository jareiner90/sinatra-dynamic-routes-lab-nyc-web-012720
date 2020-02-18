require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    eman = params[:name].reverse
    "#{eman}"
  end 

  get '/square/:number' do 
    numb = params[:number].to_i
    numb_square = numb*numb

    "#{numb_square}"
    
  end

  get '/say/:number/:phrase' do 
    numb = params[:number].to_i
    phrase = params[:phrase]

    phrase * numb
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    word1 + " " +word2 + " " +word3 + " " + word4 + " " +word5 + "."

  end 

  get '/:operation/:number1/:number2' do 
    operation = params[:operation]
    numb1 = params[:number1].to_i
    numb2 = params[:number2].to_i

    if operation == 'add' 
      (numb1 + numb2).to_s

    elsif operation == 'subtract'
      (numb1 - numb2).to_s

    elsif operation == 'multiply'
      (numb1 * numb2).to_s

    elsif operation == 'divide'
      (numb1 / numb2).to_s

    end 

  
  end 
end