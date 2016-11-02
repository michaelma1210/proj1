# Q0: Why is this error being thrown?
The Pokemon modeal doesn't exist as a model yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The database has seeds that populate the Pokemon model. The controller has a variable @pokemon. The index.html.erb file prints out a @pokemon. A @pokemon does appear because there is a wild Pokemon without an assigned trainer, but there's a trainer that is logged in.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The button calls the patch with 'capture'. The @pokemon id is passed in, and the capture_path calls the capture action in pokemons_controller. It redirects back to the homepage. 

# Question 3: What would you name your own Pokemon?
Harambe

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path was used with the id of the @pokemon.trainer. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
application.html.erb is rendered and layouts/messages is rendered, so messages are displayed in the flash hash. The code puts the error into the hash. 

# Give us feedback on the project and decal below!
Enjoyed this project, especially because Pokemon is awesome. TAs were very helpful in OHs.
# Extra credit: Link your Heroku deployed app
