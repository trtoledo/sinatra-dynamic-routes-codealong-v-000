require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:number1/:number2" do
    @result = params[:number1 * :number2]
    "#{result}"
  end


 #  get '/multiply/:num1/:num2' do
 #   @num1 = params[:num1].to_i
 #   @num2 = params[:num2].to_i
 #   @num3 = @num1 * @num2
 #   "#{@num3}"
 # end
end
