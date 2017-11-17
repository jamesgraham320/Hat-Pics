## Hat or Not

##Objective
The main goal of this project was to use ruby on rails to develop an application that successfully use the model-controller-view template. The website that we will be making is similar to an instagram but with pictures of hats ONLY. A person can comment on a hat picture, rate a hat picture, and upload a hat picture of their own to their profile. A user must be logged in to perform certain actions, such as commenting, uploading, and rating pictures. A logged in user also has access to view a feed that displays the top rated hats where each rating is an average rating of all of those who rated the hat.

##Introduction
Rails gives us many tools to create a powerful application including dynamic route paths, many different styles of OOP, and even security features. Mastering rails is going to take some time but one doesn't need a master level to produce a powerful application.

##Instructions
Start by creating the five models and relating them to each other. The application is going to have a User, a Hat, a HatPic, a Rating, and a Comment. The User object is the trickiest of the five because the user has many roles as opposed to being one thing. The user is a rater, uploader, and commenter so instead of creating three different classes for one user, we made the user all three. The user has 3 has_many relationships, one with rating, comment, and hat. The user then has a has_many through relationship with hat_pic. Rating and comment belongs_to user and hat_pic. Hat belongs_to user and has_many hat_pics. Lastly hat_pic belongs_to hat and has_many ratings and comments. Once the associations are set up we can now create the tables and migrate them. Since the application deals with pictures the new biggest task is to seed the database with pictures. For this we have to include the paperclip gem which allows you to store pictures as strings in the database. The actual pictures that were used to seed are stored in 'app/assets/images'. With paperclip, to get it to run you have to download 'brew install imagemagick' in the terminal and then after that the images should have no problem seeding into the SQLite3 database.

For each model there needs to be a corresponding controller. After the models are set up, we need set up the roots that connect the model to the controller, to the corresponding view. The home page or the root route, is the feed of all of the hats, just like an instagram home page. Here we also need a session controller. The purpose of the session controller is to validate a user. In other words, someone who is logged in or not. This is important because as someone who is logged in, you have more features on the website than someone who is just visiting and doesn't have an account or isn't logged in. As someone who is logged in, you have access to uploading, rating, and commenting. For this project you want to customize which pages need which CRUD operation, for example the user controller would need all seven restful routes.

Lastly the views need to be set up. The views match up to the 'get' controller action for each page. The styles and layout of of each page is custom styling but the login, and sign up pages have forms on them.
