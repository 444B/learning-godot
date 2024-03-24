# Gamedev-000
### Date: 2024-03-23
---
Ok, time to get started. I have set up everything I need to on Github, posted on discord, etc.  
Now to actually get to the task at hand.  

I will start by describing the rules of the game and getting a sense of the nodes I might need to make:  
1. The player starts begins with a short snake in the middle of the board.  
2. There is an apple placed randomly somewhere on the board
3. The player can only move left and right and is moving forward perpetually.
4. If the player eats an apple, the length of the snake increases by one unit.
5. A new apple spawns somewhere on the map, in a location that is not underneath the snake.  
6. If the player hits a wall or runs into their tail, the game ends  
Extra:
7. There should be a counter for the number of apples eaten and the previous high score.  
8. A gameplay UI
9. Multiplayer
10. Microtransactions (lol not really!)
11. 99.999999999% SLA or 9.0% SLA, there is no in between


Nodes:
- snake
- [X] board
- [X] apple
- random item placer
- wall / edge of map
- ability for player to detect eating itself
---
Now I need to take a look into how I am going to make these assets.

---
Watching Shawcats [video](https://www.youtube.com/watch?v=XQ_LpQzbsok) which I had watched a week ago
Trying to get a sense of game design workflow.  
Might be using krita for this.
Also, I am considering recording or streaming the process? Is that a good idea? Will I feel comfortable with that?  
Its likely to throw me off more than anything, I think the reason why I want to is that I will probably look back at this
and feel that I learned alot so I am optimizing everything.
As Donald Knuth [once said]:(https://wiki.c2.com/?PrematureOptimization) 
> "Premature optimization is the root of all evil."  
Ok, no streaming or recording. Just focus on getting it done at 80% of how youd like it then not at all.  
This is especially true for my perfectionist tendencies.  
Wow, i am realizing how my own actions are a major obstable to this goal.  
Ok, I need to get out of my own way and just focus on a workflow.
Here is the suggested workflow:
- Understand what goes into game design:
- Create assets
- import to Godot
- code it all into place

---
I am getting all caught up in choosing the correct canvas size.  
My resolution on my laptop is good 2880 X 1800.
Other users might only use 1920X1080
Buts its such a simple game and I would rather use smaller assets so maybe Ill make the board 960X540
Here I go again, prematurely optimizing.

I was hoping the freecodecamp [video](https://www.youtube.com/watch?v=S8lMTwSRoRg&t=804s) would have a section on creating assets
but it looks like they are just downloading and importing them. 
Maybe gdquest has something

---
Ok I found a tutorial on krita but I think its probably too soon to be focusing on how to make high def assets.
Especially since I dont know what its gonna be like in size when it gets imported
Ok, let me make the simplest thing I can for now.
A Dark rectangle.

Ok, going to import but now I need to choose an export format. I know that PNG is lossless
but I wonder what Godot reccomends. 
Found some [documentation](https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/importing_images.html)
ok, lets do PNG.
Cool, managed to export it as ../assets/background.png

---
Ok, I have played around with Krita and have some absolute bare basic sprites
- Apple
- Background
- Snake head
- Snake body

I think all that remians is to smash out the game logic in gdscript.


Summary of things learned today:  
- I learned how to make basic textures on Krita  
- I learned about CanvasItem and that it masks all other nodes (or something)  
- I tend to prematurely optimize alot. Maybe from a fear of failure? or wanting to maximize?
- An effective strategy for me might just be the one thing that works and then optimize AFTER and only only next iterations
- Optimize only on successive iterations.

List of items to focus on tomorrow:  
- Getting my hands dirty with GDscript.
- Getting movement of snake head
- connecting body to head
- free.queue on apple when on collision with snake head
- if delete, append body to snake
