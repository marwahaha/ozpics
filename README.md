# README
## link (URL) to the App:
https://sleepy-mountain-74358.herokuapp.com/

## GitHub repository link:
https://github.com/annarosz/ozpics

## Figma links:
https://www.figma.com/file/cqd1AFYjrk5zudz3Nhrh1Y6K/ozpics_lowfidelity?node-id=0%3A1

https://www.figma.com/file/SqZz83wFX67CPthGwYnzIq/ozpics_highfidelity?node-id=0%3A1


# Project Description

### Project purpose
  The purpose of this project is to create a two side market place where people can go to sell or buy photos. 
### Functionality / features
  - Buyer function
    - sign up
    - log in
    - view dashboard of order history
    - add a photo to cart, checkout and view order
  - Seller function
    - sign up
    - log in
    - view dashboard of own profile and photos
    - create, edit and delete own photos
### Screenshots
(TBC)
### Tech stack
  - HTML5
  - CSS & Bootstrap
  - Ruby on Rails
  - Heroku
  - Github
### Instructions
  - Join as a seller
    - create an account as a seller / or login if have an account
    - under "My Account" go to dashboard to add photos
    - click the single photo to edit or delete
    - to edit account or log out, go to link under "My Account"
  - Join as a buyer
    - create an account as a buyer / or login if have an account
    - click to view a photo
    - click "Add to Cart" to add the photo to shopping cart
    - after selecting all wanted photos, click checkout
    - finalise payment by fill credit card details
    - view this order by click "View Order" button
    - under "My Account" go to dashboard to view order history
    - to edit account or log out, go to link under "My Account"
# Design Documentation

### Design process

(TBC)

### User stories

see short answer questions #15

### A workflow diagram of the user journey/s.

(TBC)

### Wireframes

see short answer questions #16

### Database Entity Relationship Diagrams

  see short answer questions #14

# Planning Process

### Project plan & timeline
  - week 1 
    - day1: planning(low-res wireframe, trello), database design, set up Github
    - day2: create seller function, prepare website contents
    - day3: continue work on seller function(divise to set up login, aws to upload image) sigma page mockups
    - day4: work on buyer function (stripe), start styling
    - day5: achieve project mvp
  - week 2
    - work on extra features: shopping cart, order history, category filter, search function.
    - keep working on styling
    - prepare documentation for submission
    - prepare presentation
### Screenshots of Trello board

<img src="./docs/Trello_1.jpg">
<img src="./docs/Trello_2.jpg">
<img src="./docs/Trello_3.jpg">

# Short Answer Questions
#### 1. What is the need (i.e. challenge) that you will be addressing in your project?

The challenge is to provide a secure and functional platform that people can use to trade. The platform is serving as a market place where a photographer can sell their photos and people such as graphic designer can purchase it. It has to be secure in terms of functons such as only seller can edit and delete their own stock. On the other hand the buyers can make payment safely through Stripe. In terms of functionality, the challenge is to have the user to create their accounts. The sellers are able to publish photos and the buyer are able to add the photo to a shopping cart and view their purchasing history.   

#### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

anna

#### 3. Describe the project will you be conducting and how your App will address the needs.



#### 4. Describe the network infrastructure the App may be based on.

The App is deployed on Heroku. Heroku is a platform that run applications by using dyno grid. The grid is made up of several servers. Heroku gives every application a unique domain that can routes to the specific dyno. The App is pushed to Heroku by using a git server.

#### 5. Identify and describe the software to be used in your App.

The App is created using Ruby and Ruby on Rails framework. We use Stripe to handle online payment which allow buyers and sellers to make and receive payments over the Internet. We use Amazon's S3 service to handle image uploading. devise gem was used to perform user signup, login, session information and password encrypted and reset. 

#### 6. Identify the database to be used in your App and provide a justification for your choice.

We use PostgreSQL database for our app to deploy. PostgreSQL extends the SQL language combined with many features that safely store and scale the most complicated data workloads. It is reliable and highly extensible. In terms of deploying, Heroku provide a Postgres database service with a web dashboard, the ability to share queries with dataclips, and several other helpful features. 

#### 7. Identify and describe the production database setup (i.e. postgres instance).

The production database on Heroku is a Postgres database that different from the local development one. To setup this database, we need to run migration on Heroku by ` heroku run rails db:migrate ` . Then to seed the database by running ` heroku run rails db:seed ` . Database can be reset as well by running ` heroku pg:reset DATABASE_URL ` . The database run locally and run on Heroku will have the same structure but differnt data stored.

#### 8. Describe the architecture of your App.

anna

#### 9. Explain the different high-level components (abstractions) in your App.

Active Record is the model of Model View Controller(MVC) structure. It is used to manipulate data stored in a relational database. Action Pack provides the view and controller layers in the MVC paradigm. It handles requests and responses. Active Support is a collection of utility classes and standard library of extensions that are useful in Rails. Action Mailer provides the email service layer. Active Storage is used to handle image uploading.

#### 10. Detail any third party services that your App will use.

Third party services includes
  - Amazon Simple Storage Service (S3) for photo uploading
  - Stripe API for payment
  - Heroku for App deploying

#### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

Amazon is a marketplace where buyers and sellers used to trade. The data structure of Amazon is ???

#### 12. Discuss the database relations to be implemented.

one to many relations
  - a seller has many photos
  - a category has many photos
  - a buyer has many orders

many to many relations
  - an order has many photos, a photo belongs to many orders

#### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

  - seller model: generate by devise gem. It is used to store seller information. a seller has many photos.
  - photo model: photo is the product to trade of this platform app. it is published by an individual seller to the market and connected with the seller via the foreign key seller_id. It has many line_items which are the items that added to a shopping cart for purchasing. a photo also belongs to a category via the foreign key category_id
  - category model: all the photos are assigned to a category when uploaded. each category has many photos. 
  - buyer model: generate by devise gem. It is used to store buyer information. It has many orders by assigning a buyer_id to each generated order. 
  - order model: order is generated after a completed purchase. It has many items (called line_items in this app). It belongs to a buyer through the foreign key of buyer_id.
  - line_items model: a line_item is a photo that added to a shopping cart. It belongs to a photo and an order. it is saved to an order after the purchase finalised.

#### 14. Provide your database schema design.

<img src="./docs/Ozpic-schema.JPG">

#### 15. Provide User stories for your App.

(TBC)

#### 16. Provide Wireframes for your App.

(TBC)

#### 17. Describe the way tasks are allocated and tracked in your project.

Tasks are divided into two parts for this project, front end of design and styling, backend of functions and features. 

#### 18. Discuss how Agile methodology is being implemented in your project.

We have a moring stand up session where we talk about what has been done and the difficulties we faced the day before. We also need to talk about what are going to be done on the day. Advice and help can be obtained during this process in terms of solving the problems that we are having.

#### 19. Provide an overview and description of your Source control process.

We are using Github to track and manage any code changes of the project. Everytime we create a contrller or a model we make a commit and push to Github. At the end of the day, one of the team member will pull the latest Github master code to her local laptop. From their conflicts will be solved locally with her changes of code. After solving the conflicts, codes will be push back to Github. From there the other team member can do a git pull to update her local codes.

#### 20. Provide an overview and description of your Testing process.



#### 21. Discuss and analyse requirements related to information system security.

The requirements related to information system secruity is to safely store user information and has a way for user to retrive information once correct recovery procedure implimented. Authentication is required by user providing correct password. The password has to be encrypted to store in the database. Additionaly, different users need to be authorised with diiferent access to data to ensure data cannot be muted by unauthorised activity.  

#### 22. Discuss methods you will use to protect information and data.

Instead of writing our own code to protect data, we use Ruby on Rails gems and third party servce to handle data security. for authentication, we use the divise gem which has built in feature to encryted user password when they signed in. devise also has the ability to handle incorrect input for user information and reset passowrd for user in the case the password has been forgotten by the user. We use thrid party service Stripe to store buyer credit card information instead of saving it to our own database. Heroku as a deploy platform also performs well in terms of data security. 

#### 23. Research what your legal obligations are in relation to handling user data.

