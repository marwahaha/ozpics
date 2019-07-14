# OZPICS

## Live app link:
https://sleepy-mountain-74358.herokuapp.com/

## Figma links:
https://www.figma.com/file/cqd1AFYjrk5zudz3Nhrh1Y6K/ozpics_lowfidelity?node-id=0%3A1

https://www.figma.com/file/SqZz83wFX67CPthGwYnzIq/ozpics_highfidelity?node-id=0%3A1

![website animation](https://raw.githubusercontent.com/annarosz/temp/master/OZPICS_new.gif)

Back-end: Jing Li, Front-end: Anna Roszko
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
    - Directs all users (buyers and sellers) to one page where they can choose how they want to join / use the site.

  - Buyer function:
    - Create account / Log in / Edit account.
    - View dashboard which includes their entire order history.
    - Add a photo to cart, checkout and view order.

  - Seller function:
    - Create account / Log in / Edit account.
    - View dashboard to create seller profile.
    - Ability to add new, edit and delete their own photos.

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

![ideas sketch](https://raw.githubusercontent.com/annarosz/temp/master/ideas_sketch.jpg)

Our next step was to work out the database entity relationship diagram:

![database schema](https://raw.githubusercontent.com/annarosz/temp/master/Ozpic-schema.JPG)

Once that was determined, the next step was to work out the low-fidelity wireframes in Figma. This gave us an opportunity to see the pages and functionality clearly and make changes together on screen as we discussed the project moving forward. We noticed that many stock photography sites have similar features to best showcase their funcionality, we decided to use a similar format:

![low fidelity wireframes](https://raw.githubusercontent.com/annarosz/temp/master/wireframes_low_user_journey.jpg)

Next step was to work on the high-fidelity wireframes and resolve the 'brand style guide' that suited our market and user stories. 

Our users are both buyers and sellers within an Australian market. Stock photography site buyers are mostly professionals working in communications and visual design who don't have budget for a photo shoot. The sellers are either professional or amateur photographers. Both users and sellers would most likely engage with stock photography sites via desktop application as opposed to mobile for ease of use and the ability to see and sort the photos clearly. Because our site is for only Australian content, we wanted to create an Australian 'feel' in the name and colour palette. 

![style guide](https://raw.githubusercontent.com/annarosz/temp/master/design_style_guide.jpg)

![high fidelity wireframes](https://raw.githubusercontent.com/annarosz/temp/master/wireframes_high_user_journey.jpg)

We decided to create a bold feature in our site that changed the colour theme of the entire site based on whether the user was logged in as a buyer or seller. This creates visual interest but it also aides in navigation as it explicitly demostrates to the user where they are in the site - white for buyer and black for seller.

![home page buyer](https://raw.githubusercontent.com/annarosz/temp/master/OZPICS_buyer_home.jpg)
![home page seller](https://raw.githubusercontent.com/annarosz/temp/master/OZPICS_seller_home.jpg)

## A workflow diagram of the user journeys

![Site architecture](https://raw.githubusercontent.com/annarosz/temp/master/site-architecture-new.jpg)
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

![Trello 1](https://raw.githubusercontent.com/annarosz/temp/master/Trello_1.jpg)
![Trello 2](https://raw.githubusercontent.com/annarosz/temp/master/Trello_2.jpg)
![Trello 3](https://raw.githubusercontent.com/annarosz/temp/master/Trello_3.jpg)
