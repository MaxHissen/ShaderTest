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
![image](https://github.com/user-attachments/assets/bfceea71-518f-4504-ba05-acc747398a6c) <br />

This way changing the subject of the animation is much more efficient and reliable <br />
![image](https://github.com/user-attachments/assets/254fc1fb-7dea-4056-8ab3-abc18be5a379) <br />
