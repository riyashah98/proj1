# Q0: Why is this error being thrown?
The root path uses a pokemon controller, however no pokemon controller was made there for an error is thrown. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In the home controller, you are getting all the pokemon that do not have a trainer and randomly picking one from that group. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
creates a button called Throw a Pokeball and when clicked will invoke the capture method in the Pokemon controller. 

# Question 3: What would you name your own Pokemon?
sanisaurus

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
redirect_to trainer_path(@pokemon.trainer) 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
it show an error from layout/application

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

