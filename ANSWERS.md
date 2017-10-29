# Q0: Why is this error being thrown?
We haven't created a controller for Pokemon or even the Pokemon model.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They're all trainerless. The home controller randomly chooses one that is trainerless to show.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It passes @pokemon as a parameter that can later be called in the capture method. We had to force the method to be a patch instead of a post since that's the default.
# Question 3: What would you name your own Pokemon?
Karnavan
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected to trainer_path(current_trainer). The devise_for method would generate all the necessary routes to the various trainers so that we can return to the current trainer's profile after damaging a pokemon.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It displays the error if it runs into an error at the top of the page.
# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
