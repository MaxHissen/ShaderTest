# ShaderTest <br />

## Quick animation with compute shader and colour map <br />

A while ago I saw a video on how to easily create modifiable animations:<br />
https://www.youtube.com/watch?v=HsOKwUwL1bE <br /><br />
And wanted to try it out as I've always had an interest in compute shaders and GPU usage.<br /><br />

So I created an animation of a red balloon that toggles mud with the spacebar<br />
https://github.com/user-attachments/assets/20666a26-525d-487e-a91b-9fc864c8506d<br /><br />

## The Process: <br />
# Drawing the animation <br />
The first step is to create the animation: <br />
![image](https://github.com/user-attachments/assets/24bc60e3-65d4-4734-875f-5df0c3a23e75)  <br />
I used https://www.pixilart.com/ and downloaded the file from the website. <br />

<br />
The way it works is by using the red and green colour channels per pixel to map to a pixel of the image. <br />

This way changing the subject of the animation is much more efficient and reliable <br />
![image](https://github.com/user-attachments/assets/254fc1fb-7dea-4056-8ab3-abc18be5a379) <br />

For my mini project I made a clean balloon and a muddy balloon <br />
![image](https://github.com/user-attachments/assets/17184da8-179e-4140-8b19-d0cb60b93e62) <br />


# Applying the shader <br />
I used Godot 4 because it's simple, lightweight, and I had experience with it. <br />
Regardless of any experience I might've had with the game engine, figuring out the shader took me a lot of research. It was my first time writing any shaders and took a while to wrap my head around the different ways of solving problems. <br />

I attached a compute shader to a sprite with the script as follows: <br />
![image](https://github.com/user-attachments/assets/c3059843-9f17-4e26-8f96-97e35c8566c8) <br />

I added a sprite for the animation and a sprite for the colour map. <br />
Then a space keypress to switch between the clean balloon colour map and the muddy balloon colour map, and that was it. <br />

# Next Steps <br />
I will definitely build off of this in later projects. Now that I've climbed a good chunk of the learning curve there's many things I can see myself using this for. <br />








