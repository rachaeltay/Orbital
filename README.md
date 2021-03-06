=======
# README
This is the first web application we have ever built and we have learnt a lot through self-learning and practising. Thanks for checking this out :)

## Project Scope
Web app to allow users to view and create events, and save them to a planner

A web app designed to allows users to sign up for current events as well as discover upcoming events. Users can also host their own events and invite others via social media. The app updates with real time to ensure that all events are updated.

![homepage.png](assets/homepage.png)

## Problem motivation
Students looking to get in touch with the latest happenings will now have a one-stop shop with listings of all events happening. No longer will they need to trawl through multiple websites and look through obscure listings. Users can also send invites via social media platforms to coordinate with other like-minded individuals. Up-and-coming events now have a platform to showcase their offerings and boost their presence.

## Proposed Features and Technologies 
![stack.PNG](assets/stack.PNG)

The web app will be designed and built using Ruby on Rails, which uses the Model-View-Controller principle to handle the backend of the application. Our database of choice is postgresql, in which all information is stored. We chose Ruby on Rails for its simplicity to set up, whilst providing a large number of gems, such as Devise, Carrierwave, Paginator that are used in the app. On top for that, it is able to easily integrate any plugins into its asset pipeline, which we have done with Slick.

In order to enable users to login with their facebook account, we used Facebook Omniauth, Graph API and Koala to authenticate users, and pull information from their facebook accounts such as their friends list.

To allow users to upload posters for their events, we utilized Carrierwave to create a simple upload button, and Minimagick to process the images and scale them accordingly, and finally to save the images in our database.

As mentioned previously, we have used Slick, along with other JavaScript plugins/gems such as Momentjs, Bootstrap and Simple Calendar, to improve our UI/UX from a basic html page. 

![login.png](assets/login.png)

- Users can create accounts and log in to manage their events, using Postgresql as the backend to manage all CRUD activities
- Able to post and edit new events
- Able to save events to their calendar

![social-media4.png](assets/social-media4.png)

- Link / log in to Facebook, and able to access users data along with friends' list
- Able to share events through many different social media links such as Telegram, Twitter, LinkedIn etc.

![comment2.png](assets/comment2.png)

- Personalised calendar of events you have signed up
- Able to see facebook friends going to events on event listing and calender to join them!

![calendar.png](assets/calendar.png)

Level of Achievement: Gemini

## Project Log

| S/N | Task | Date | Rachael | Thomas | Remarks |
| --- | --- | --- | --- | --- | --- |
| 1 | Liftoff Day 1 | 8 May 2017 | 8 | 8 | Overview of Mobile App Development & Basic Android App Development |
| 2 | Liftoff Day 2 | 9 May 2017 | 8 | 8 | Intermediate Android App Development, An introduction to Serverless codes on Windows Azure and Git |
| 3 | Team meeting & planning | 16 May 2017 | 10 | 10 | Planning of idea execution for the project and technology required |
| 4 | Learning of technology used | 20 May 2017 | 10 | 10 | Ruby on Rails, Postgresql, HTML, CSS, JavaScript, HAML |
| 5 | Learning of technology used | 22 May 2017 | 10 | 10 | Ruby on Rails, Postgresql, HTML, CSS, JavaScript, HAML |
| 6 | Implementation details and initial project structure | 20 May 2017 | 10 | 10 | Discussion of the specific implementation of features |
| 7 | Mission Control | 19 May 2017 | 5 | 5 | MeteorJS Workshop |
| 8 | Team meeting & planning | 25 May 2017 | 10 | 10 | Continuation of ideation |
| 9 | Mission Control | 10 Jun 2017 | 6 | 6 | Web Security Workshop and Google Workshop on BigQuery |
| 10 | Programming | 29 May 2017 | 10 | 10 | Working on Frontend, design of UI UX |
| 11 | Programming | 5 Jun 2017 | 5 | 5 | Working on UI, implementation of UI UX |
| 12 | Programming | 7 Jun 2017 | 7 | 7 | Working on UI, implementation of UI UX |
| 13 | Programming | 10 Jun 2017 | 10 | 10 | Develop database and filtering, designing schemas and choosing database |
| 14 | Programming | 12 Jun 2017 | 10 | 10 | Working on Backend, implementation of database |
| 15 | Programming | 15 Jun 2017 | 10 | 10 | Working on finalising the features |
| 16 | Programming | 18 Jun 2017 | 6 | 6 | Debugging |
| 17 | Team meeting | 25 Jun 2017 | 10 | 10 | Worked on Milestones |
| 18 | Team meeting | 2 Jul 2017 | 10 | 10 | Facebook login |
| 19 | Team meeting | 9 Jul 2017 | 10 | 10 | Tagging and filtering |
| 20 | Team meeting | 16 Jul 2017 | 10 | 10 | Debugging |
| 21 | Team meeting | 23 Jul 2017 | 10 | 10 | Worked on Milestones |


| Total Hours | Rachael | Thomas |
| --- | --- | --- |
| 370 | 185 | 185 |
