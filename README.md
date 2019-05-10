# OZPICS

## Link (URL) to the App:
https://sleepy-mountain-74358.herokuapp.com/

## GitHub repository link:
https://github.com/annarosz/ozpics

## Figma links:
https://www.figma.com/file/cqd1AFYjrk5zudz3Nhrh1Y6K/ozpics_lowfidelity?node-id=0%3A1

https://www.figma.com/file/SqZz83wFX67CPthGwYnzIq/ozpics_highfidelity?node-id=0%3A1

___

# Project Description

## Problem definition / purpose

  The general purpose of this project is to create a two-sided marketplace. Specifically, we have created a library for stock photography where there are multiple sellers and multiple buyers. Our site, OZPICS, differs from other sites on the market as our content is stictly Australian. There is a problem that exists on other stock photography sites where it's difficult to find/filter content that looks 'right' for an Australian audience, this makes searching extra time-consuming and frustrating.

## Functionality / features

  - Home page:
    - Displays a selection of content from the photography library.
    - The user has the ability to modify content on the home page by choosing between different categories.
    - The user also has access to a search function in the navigation bar which allows to search by photographer (search by photographer is MVP, it will have added search parameters in the future).
    - Join button in navigation.

  - Join portal page:
    - Directs all users (buyers and sellers) to one page where they can choose how they want join / use the site.

  - Buyer function:
    - Create account / Log in / Edit account
    - View dashboard which includes their entire order history.
    - Add a photo to cart, checkout and view order.

  - Seller function:
    - Create account / Log in / Edit account
    - View dashboard to create seller profile.
    - Ability to add new, edit and delete their own photos.

<img src="./docs/OZPICS_home.jpg">
<img src="./docs/OZPICS_join.jpg">

## Tech stack

  - HTML5
  - CSS & Bootstrap
  - Ruby on Rails
  - Heroku
  - Github

## Instructions

  - Navigate to the join portal page through the "join" button in the navigation bar.

  - Join as a seller
    - Create an account as a seller or login if they have an existing account.
    - Under "My Account" go to dashboard to add photos.
    - Click the thumbnail photo to redirect to the respective show page where the seller can edit or delete their photo.
    - To edit account or log out, go to the links under "My Account".

  - Join as a buyer
    - Create an account as a buyer or login if they have an existing account.
    - Click the thumbnail photo to view a photo in the respective show page.
    - Click "Add to Cart" to add the photo to your shopping cart.
    - In the shopping cart the buyer has the option to remove any photos before they click "checkout".
    - Make payment by credit card via pop-up.
    - View this order by click "View Order" button.
    - Under "My Account" go to dashboard to view entire order history.
    - To edit account or log out, go to links under "My Account".
    
___

# Design Documentation

## Design process

The design process started with researching other stock photography sites to better understand their functionality. As a team, we discussed the idea in terms of visual design and functionality and planned things out with some rough sketches:

<img src="./docs/ideas_sketch.jpg">

Our next step was to work out the database entity relationship diagram:

<img src="./docs/Ozpic-schema.JPG">

Once that was determined, the next step was to work out the low-fidelity wireframes in Figma. This gave us an opprtunity to see the pages and functionality clearly and make changes together on screen as we discussed the project moving forward. We noticed that many stock photography sites have similar features to best showcase their funcionality, we decided to use a similar format:

<img src="./docs/wireframes_low_fidelity.JPG">

Next step was to work on the high-fidelity wireframes and resolve the 'brand style guide' that suited our market and user stories. 

Our users are both buyers and sellers within an Australian market. Stock photography site buyers are mostly professionals working in communications and visual design who don't have budget for a photo shoot. The sellers are either professional or amateur photographers. Both users and sellers would most likely engage with stock photography sites via desktop application as opposed to mobile for ease of use and the abilty to see and sort the photos clearly. Because our site is for only Australian content, we wanted to create an Australian 'feel' in the name and colour palette. 

<img src="./docs/design_style_guide.JPG">

<img src="./docs/wireframes_high_user_journey.JPG">

We decided to create a bold feature in our site that changed the colour theme of the entire site based on whether the user was logged in as a buyer or seller. This creates visual interest but it also aides in navigation as it explicitly demostrates to the user where they are in the site - white for buyer and black for seller.

<img src="./docs/OZPICS_buyer_home.JPG">
<img src="./docs/OZPICS_seller_home.JPG">

## A workflow diagram of the user journeys

<img src="./docs/site-architecture-new.JPG">
___

# Planning Process

## Project plan & timeline

  - Week 1 
    - Day 1: planning (low-fidelity wireframes, trello), database design, set up Github.
    - Day 2: create seller function, prepare website contents, high-fidelity wireframes.
    - Day 3: continue work on seller function (divise to set up login, aws to upload image) continue work on high-fidelity wireframes.
    - Day 4: work on buyer function (stripe), start styling.
    - Day 5: achieve project MVP.

  - Week 2
    - Work on extra features: shopping cart, order history, category filter, search function.
    - Keep working on styling.
    - Prepare documentation for submission.
    - Prepare presentation.

<img src="./docs/Trello_1.jpg">
<img src="./docs/Trello_2.jpg">
<img src="./docs/Trello_3.jpg">
___

# Short Answer Questions

## 1. What is the need (i.e. challenge) that you will be addressing in your project?

The need that we are addressing with OZPICS is to provide a secure, functional and engaging platform that people can use to buy and sell stock photography.

OZPICS has to be secure: sellers can only edit and delete their own photos, buyers need to feel confident when making payments safely through Stripe. 
 
OZPICS has to be functional: buyers and sellers need to be able to create their own account, sellers need to publish photos and buyers need to be able to add photos to a shopping cart and view their purchase history.

OZPICS needs to be engaging: all users need to have an excellent initial user experience and therefore want to continue to use our site.

## 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

OZPICS is the only stock photography library with only Australian content. Users of other similar sites are bombarded with images that are not relevant and can't be used for Australian audiences, this wastes time and creates frustration. The primary buyers for OZPICS would be communications and visual design professionals, and small business owners. Sellers would be professional and amatuer photographers.

## 3. Describe the project will you be conducting and how your App will address the needs.

OZPICS has a similar format to other stock library sites but by limiting our content to Australia only, we create a product that addresses the needs of our users and fills a gap in the Australian market. 

## 4. Describe the network infrastructure the App may be based on.

Jing

## 5. Identify and describe the software to be used in your App.

Jing

We used Stripe to handle online payment which allow buyers and sellers to make and receive payments over the internet.

## 6. Identify the database to be used in your App and provide a justification for your choice.

Jing

## 7. Identify and describe the production database setup (i.e. postgres instance).

Jing

## 8. Describe the architecture of your App.

- Navigate to the join portal page through the "join" button in the navigation bar.

- Join as a seller
  - Create an account as a seller or login if they have an existing account.
  - Under "My Account" go to dashboard to add photos.
  - Click the thumbnail photo to redirect to the respective show page where the seller can edit or delete their photo.
  - To edit account or log out, go to the links under "My Account".

- Join as a buyer
  - Create an account as a buyer or login if they have an existing account.
  - Click the thumbnail photo to view a photo in the respective show page.
  - Click "Add to Cart" to add the photo to your shopping cart.
  - In the shopping cart the buyer has the option to remove any photos before they click "checkout".
  - Make payment by credit card via pop-up.
  - View this order by click "View Order" button.
  - Under "My Account" go to dashboard to view entire order history.
  - To edit account or log out, go to links under "My Account".

<img src="./docs/site-architecture-new.JPG">

## 9. Explain the different high-level components (abstractions) in your App.

Jing

## 10. Detail any third party services that your App will use.

Third party services includes
  - Amazon Simple Storage Service (S3) for photo uploading
  - Stripe API for payment
  - Heroku for App deploying

## 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

A data structure is a collection of data values, the relationships among them, and the functions or operations that can be applied to the data.

Other marketplace apps that have similar data structures to our app are:

- Stocksy: https://www.stocksy.com/
- istockphoto: https://www.istockphoto.com/au
- unsplash: https://unsplash.com/

## 12. Discuss the database relations to be implemented.

One to many relations:
  - a seller has many photos
  - a category has many photos
  - a buyer has many orders

Many to many relations:
  - an order has many photos, a photo belongs to many orders

## 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

Jing

## 14. Provide your database schema design.

<img src="./docs/Ozpic-schema.JPG">

## 15. Provide User stories for your App.

Our users are both buyers and sellers within an Australian market. Stock photography site buyers are mostly professionals working in communications and visual design who don't have budget for a photo shoot, or small business owners. The sellers are either professional or amateur photographers.

## 16. Provide Wireframes for your App.

<img src="./docs/wireframes_low_user_journey.JPG">
<img src="./docs/wireframes_high_user_journey.JPG">

## 17. Describe the way tasks are allocated and tracked in your project.

Initially we did pair programming to understand our individual needs and strengths. We did all the planning together and then decided to work individually to make the most of the two-week deadline. Roles were split into front-end (visual design and styling) and back-end (functions and features). Communication was done regulary in person and over slack. 

<img src="./docs/slack_new.jpg">

## 18. Discuss how Agile methodology is being implemented in your project.

Individuals and interactions over processes and tools: Working face-to-face and having a daily morning stand-up session allowed for plenty of interaction, communication and reflection. 

Focus on breaking big work down into smaller tasks that can be completed quickly. Maintaining a constant pace for completed work. 

Responding to change over following a plan: we were able to stay flexible and open to change on a daily basis to adjust our expectations and MVP. 

## 19. Provide an overview and description of your Source control process.

We are using Github to track and manage code changes. Everytime we create a controller or a model we make a commit and push to Github. At the end of the day, we pull the latest Github master code to our local git branches. Conflicts are resolved locally while comparing to our local code. After resolving the conflicts, code is pushed back to Github with thorough notation. From there the other team member can git pull to update their local code.

## 20. Provide an overview and description of your Testing process.

We have been doing thorough user testing on two local servers and on heroku. Having multiple users and muliple buyers gives us an opportunity to test our site for bugs and user experinces that can be optimsed. Working on git branches also allows us to review code before pushing to our master file.  

## 21. Discuss and analyse requirements related to information system security.

Jing

## 22. Discuss methods you will use to protect information and data.

Jing 

## 23. Research what your legal obligations are in relation to handling user data.

Include a privacy policy: a clear disclosure of how you’ll be using any data that you collect. Even if you’re just collecting people’s names or email addresses, rather than their credit card numbers, reassuring them that their data will be kept private will give them the confidence to keep using your site.  

Most countries have strict rules in their information security and cyber law, which include guidelines around privacy. 