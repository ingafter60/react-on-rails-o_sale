# BUILDING SPA E-COMMERCE APPLICATION USING REACT ON RAILS 6
https://github.com/ingafter60/react-on-rails-o_sale

Course content

01. Installing required software for Rails 6 application development

01.1.1 Demonstration about the app to build
01.2.2 Installing Ruby Version Manager
01.3.3 Installing Ruby
01.4.4 Creating a Gemset
01.5.5 Installing Node.js and Yarn
01.6.6 Installing Ruby on Rails 6

## 02. Creating a Rails 6 Project and Discussing Rails Fundamental Concepts

### 02.1.7 Creating Rails 6.0 Project with MySQL Database
	# passed lesson: 1-6
	> rails new o_sale -d mysql
	> rails db:create

### 02.2.8 Copying Static Files To Public Folder
        modified:   README.md
        new file:   public/detail-page.html
        new file:   public/index.html
        new file:   public/login.html
        new file:   public/new-item.html
        new file:   public/register.html

### Create Github Repository 
	https://github.com/ingafter60/react-on-rails-o_sale
        modified:   README.md02.3.9 Rails Application Structure

### 02.4.10 Rails Model-View-Controller Pattern
	> The video was about files structures and no changes were made
        modified:   README.md

## 02.5.11 The Rails Views Folder Structure       
	> The video was about Views folder and no changes were made
        modified:   README.md

### 02.6.12 Introduction to Rails Routing
	> The video was about routes and no changes were made
        modified:   README.md

### 02.7.13 Rails Action Controller
	> The video was about routes and no changes were made
        modified:   README.md

## 03. Getting Rails To Serve Up The Static Files Using Controllers and Views

### 03.1.14 Moving the Body of Index File to the Layout File
        modified:   README.md
        modified:   app/views/layouts/application.html.erb
        renamed:    public/index.html -> public/index1.html

### 03.2.15 Creating Products Controller
	> rails g controller products
        modified:   README.md
        new file:   app/assets/stylesheets/products.scss
        new file:   app/controllers/products_controller.rb
        new file:   app/helpers/products_helper.rb
        new file:   app/views/products/index.html.erb
        modified:   config/routes.rb
        new file:   test/controllers/products_controller_test.rb

### 03.3.16 Rails View Rendering
        modified:   README.md
        modified:   app/views/products/index.html.erb

### 03.4.17 Installing Bootstrap 4
	> yarn add bootstrap jquery popper
        modified:   README.md
        modified:   app/javascript/packs/application.js
        new file:   app/stylesheets/custom.css
        modified:   package.json
        modified:   yarn.lock
        import "bootstrap/dist/css/bootstrap.min.css"
		import "../../stylesheets/custom.css"

## 04. Using Embedded Ruby and Rails Partials in View Templates

### 04.1.18 Introduction to Embedded Ruby (ERB)
        modified:   README.md
        modified:   app/views/products/index.html.erb

### 04.2.19 Creating and Using Rails View Partials
        modified:   README.md
        modified:   app/views/layouts/application.html.erb
        new file:   app/views/shared/_header.html.erb

### 04.3.20 Creating the Footer Partial
        modified:   README.md
        modified:   app/views/layouts/application.html.erb
        new file:   app/views/shared/_footer.html.erb

### 04.4.21 Moving the Rest of Layout File Content Into Index View Template
        modified:   README.md
        modified:   app/views/layouts/application.html.erb
        modified:   app/views/products/index.html.erb

### 04.5.22 Factoring Out Product Data Into A Variable
        modified:   app/views/layouts/application.html.erb
        modified:   app/views/products/index.html.erb

### 04.6.23 Replacing Hardcoded Data With Variables In Product View Template
        modified:   README.md
        modified:   app/views/products/index.html.erb
        NOTE: result with error

### 04.7.24 Fixing Product Definition Error
        modified:   README.md
        modified:   app/views/products/index.html.erb
        NOTE: error is fixed

### 04.8.25 Eliminating Code Duplication Using Loops
        modified:   README.md
        modified:   app/views/products/index.html.erb

### 04.9.26 Passing Variables To Partials
        modified:   README.md
        new file:   app/views/products/_product.html.erb
        modified:   app/views/products/index.html.erb

### 04.10.27 Simplifying View Templates By Using Action View Helper Methods
        modified:   README.md
        modified:   app/views/products/_product.html.erb
        modified:   app/views/products/index.html.erb

### 04.11.28 Replacing Anchor Tags With Link_to Method Challenge
        modified:   README.md
        modified:   app/views/shared/_header.html.erb

## 05. Creating The Model Migration and Seeding Data

### 05.1.29 (Part 1/2) Moving Data From The View To The Controller
        modified:   README.md
        modified:   app/controllers/products_controller.rb
        modified:   app/views/products/index.html.erb
        modified:   app/views/shared/_header.html.erb

### 05.1.29 (Part 2/2) Moving Data From The View To The Controller
        modified:   README.md
        modified:   app/controllers/products_controller.rb

### 05.2.30 Creating The Product Model
	>  rails g model product name:string description:text 'price:decimal{8.2}' image_url:string
        modified:   README.md
        new file:   app/models/product.rb
        new file:   db/migrate/20201028132051_create_products.rb
        new file:   test/fixtures/products.yml
        new file:   test/models/product_test.rb

### 05.3.31 ActiveRecord Migration
	> rails db:migrate
	+------------------------------+
	| Tables_in_o_sale_development |
	+------------------------------+
	| ar_internal_metadata         |
	| products                     |
	| schema_migrations            |
	+------------------------------+
	3 rows in set (0.00 sec)

	mysql> desc products;
	+-------------+--------------+------+-----+---------+----------------+
	| Field       | Type         | Null | Key | Default | Extra          |
	+-------------+--------------+------+-----+---------+----------------+
	| id          | bigint       | NO   | PRI | NULL    | auto_increment |
	| name        | varchar(255) | YES  |     | NULL    |                |
	| description | text         | YES  |     | NULL    |                |
	| price       | decimal(8,2) | YES  |     | NULL    |                |
	| image_url   | varchar(255) | YES  |     | NULL    |                |
	| created_at  | datetime(6)  | NO   |     | NULL    |                |
	| updated_at  | datetime(6)  | NO   |     | NULL    |                |
	+-------------+--------------+------+-----+---------+----------------+
	7 rows in set (0.01 sec)
 	> rails c
	...
	irb(main):001:0> Product.column_names
	   (0.8ms)  SET NAMES utf8mb4,  @@SESSION.sql_mode = CONCAT(CONCAT(@@sql_mode, ',STRICT_ALL_TABLES'), ',NO_AUTO_VALUE_ON_ZERO'),  @@SESSION.sql_auto_is_null = 0, @@SESSION.wait_timeout = 2147483
	=> ["id", "name", "description", "price", "image_url", "created_at", "updated_at"]
	irb(main):002:0>
        modified:   README.md
        new file:   db/schema.rb	

### 05.4.32 (Part 1/2) Preparing To Populate The Database Tables With Data
        modified:   README.md
        modified:   db/seeds.rb

### 05.4.32 (Part 2/2) Preparing To Populate The Database Tables With Data
        modified:   README.md
        modified:   app/controllers/products_controller.rb
        modified:   db/seeds.rb

### 05.5.33 Seeding Database Tables With Data
        > rails c
        ...
        irb(main):001:0> Product.all()
        irb(main):001:0> Product.find(1)
        irb(main):001:0> Product.find(2)
        irb(main):001:0> Product.find(3)
        irb(main):001:0> Product.find(4)
        ...
        ActiveRecord::RecordNotFound
        irb(main):006:0> Product.find_by(id: 1)
        irb(main):006:0> Product.find_by(id: 1)
        irb(main):007:0> Product.first
        irb(main):007:0> Product.last
        irb(main):009:0> Product.count()
        modified:   README.md
        modified:   app/controllers/products_controller.rb
        modified:   app/views/products/_product.html.erb
        modified:   db/seeds.rb
        
## 06. Reading Product Data

### 06.1.34 Creating Products Controller's Show Action
        modified:   app/controllers/products_controller.rb
        new file:   app/views/products/show.html.erb

### 06.2.35 Replacing Product Show Data In View Template
        modified:   README.md
        modified:   app/views/products/show.html.erb
        modified:   app/views/products/_product.html.erb
        modified:   config/routes.rb
        NOTE: 
        1. The video was only  for show.html.erb
        2. Undo Last Git Commit with reset
                > git reset --soft HEAD~1

### 06.3.36 Adding Product Show Route
        modified:   README.md
        modified:   app/views/products/_product.html.erb
        modified:   config/routes.rb

### 06.4.37 Passing Product ID From The View To The Controller
        # Check routes for products controller only
        > rails routes -c products
        -------------------------------------------------------
         Prefix Verb URI Pattern             Controller#Action
        -------------------------------------------------------
           root GET  /                       products#index
        product GET  /products/:id(.:format) products#show
        -------------------------------------------------------
        modified:   README.md
        modified:   app/controllers/products_controller.rb
        modified:   app/views/products/_product.html.erb

## 06.5.38 Creating The Routes For Listing Products
        modified:   README.md
        modified:   config/routes.rb

07. Creating And Editing Products

07.1.39 Creating New Product Route
07.2.40 Using Form Helper Methods To Create The New Product Form
07.3.41 Saving New Product Form Data
07.4.42 Editing A Product
07.5.43 Factoring Out Product Form As A Partial
07.6.44 Posting The Edited Product Data To The Controller

08. Deleting Products Using Filters  Handling RecordNotFound Errors And Validation

08.1.45 Deleting A Product
08.2.46 Creating Filters In Controllers
08.3.47 Handling ActiveRecord RecordNotFound Errors
08.4.48 Adding ActiveRecord Validations
08.5.49 Testing The Validation On The Rails Console

09. Using Conditionals In Controllers Flash Messages And Using Resourceful Routing

09.1.50 Using Conditionals In Controllers To Determine The Course Of Action To Take
09.2.51 Adding Flash Messages
09.3.52 Using Flash.now Upon Failure To Save
09.4.53 Replacing The Current Routes With Resourceful Routing

10. User Registration

10.1.54 Introduction To User Model
10.2.55 Creating The User Model
10.3.56 Adding The Bcrypt Gem
10.4.57 Validating The User Model
10.5.58 Introducing Regular Expression (REGEX)
10.6.59 Writing Email REGEX
10.7.60 Downcasing Email Addresses Automatically
10.8.61 Verifying Downcasing Email Address And Its Uniqueness
10.9.62 Creating The User Controller
10.10.63 Creating The New User Form
10.11.64 Signing A User Up

11. Signing Users In And Out

11.1.65 Creating The Sign In Form
11.2.66 Signing Users In
11.3.67 Prevent Multiple Signin
11.4.68 Implementing Signing Users Out
11.5.69 Preventing Signup If Signed In
11.6.70 Implementing Automatic Sign In Upon Sign up
11.7.71 Displaying User Email Address Upon Signin

12. Displaying Server Validation Error Messages In View Templates

12.1.72 Outputting User Model Validation Error Messages
12.2.73 Outputting Product Model Validation Error Messages
12.3.74 Factoring Out Validation Errors Code Into A Partial

13. Associating Products With Users

13.1.75 Section Introduction
13.2.76 Adding User Id and Quantity To Product Model
13.3.78 Verifying That Product Records Without User Id Are Invalid
13.4.79 Adding User Id To Products In The Seed File And Re-seed Database
13.5.80 Whitelisting The Quantity Field

14. (video not yet) User Authentication

14.1.81 Section Introduction
14.2.82 Conditional Rendering Of New Product List
14.3.83 Protecting The New Product Link Using A Filter
14.4.84 Conditional Rendering Edit Product And Delete Product Buttons
14.5.85 Associating Products With Owners In Controller
14.6.86 Preventing Non-Owners From Editing or Deleting Other Users' Products

15. Adding Comments To Products

15.1.87 Introducing Adding Comments
15.2.88 Creating Comment Model
15.3.89 Creating Comments Controller Without The Use Of A Generator
15.4.90 Creating Comment Form Partial
15.5.91 Passing Product and Comment Objects To The Comment Partial
15.6.92 Implementing CommentsController's Create Action
15.7.93 Creating Comment Partial
15.8.94 Rendering Comments
15.9.95 Moving The Logic For Rejecting New Comments To A Helper Method
15.10.96 Sorting Comments In Descending Order

16. Deploying Application To Heroku

16.1.97 Deploying To Heroku

17. Introducing React

17.1.98 What is React.js?
17.2.99 Installing React
17.3.100 Integrating Hello React Into Rails
17.4.101 Explaining Hello React
17.5.102 Transpiling JSX To JavaScript

18. Developing The Skeleton Components

18.1.103 Breaking Up The View Into Components
18.2.104 Creating The Component Folder Structure
18.3.105 Creating The Wrapper Component
18.4.106 Rendering The Wrapper Component
18.5.107 Creating The Header Component
18.6.108 Creating The Remaining Components

19. Fleshing Out The Components

19.1.109 Fleshing Out The Header Component
19.2.110 Fleshing Out The Jumbotron And ProductList Components
19.3.111 Fleshing Out The Footer Component
19.4.112 Creating The Product Component
19.5.113 Using The Map Function To Map Over Product List
19.6.114 Looping Through List of Products
19.7.115 Passing Key Prop To List

20. Retrieving Records From The Database And React Life Cycle Events

20.1.116 Introducing Data Retrieval in React
20.2.117 Creating Namespaces
20.3.118 Setting Up Hot Module Reloading (HMR)
20.4.119 Responding To Requests With JSON Data Using JBuilder Gem
20.5.120 Introducing React State and Props

21. React Lifecycle Methods

21.1.121 Introducing React Lifecycle Methods
21.2.122 Discussing The React Lifecycle Methods
21.3.123 Introducing Class-Based Components
21.4.124 Using State Values In Components
21.5.125 Passing Product Prop To Product Component
21.6.126 Receiving Product Props In the Product Component
21.7.127 Adding PropTypes To Product Component

22. Client-Side Routing

22.1.128 Introducing Client-Side Routing
22.2.129 Setting Up Client-Side Routing
22.3.130 Using The Route Component
22.4.131 Using The Switch Component
22.5.132 Adding 404-Not Found Component
22.6.133 Creating The ProductDetail Component
22.7.134 Using Link Component
22.8.135 Passing URL Parameters
22.9.136 Receiving URL Parameters
22.10.137 Responding To Show Request With JSON
22.11.138 Using Link Components In Header Component

23. (videos not yet) Using Forms In React

23.1.139 Introducing React Forms
23.2.140 Creating A New Product Form
23.3.141 Adding Initial State To Form Component
23.4.142 Handling The OnSubmit Event
23.5.143 Handling Form Input Data
23.6.144 Handling Form Input Data For Rest Of The Fields Challenge
23.7.145 Using Alternative Methods of Binding

24. Submitting and Processing Form Input Data

24.1.146 Submitting Form Input Data
24.2.147 Implementing Product Form Submission
24.3.148 Handling Form Data Submission In Parent Component
24.4.149 Graphical Representation of Component Hierarchy
24.5.150 Adding A New Product
24.6.151 Creating JBuilder Partial

25. Implementing Client-Side Validation Of Form Fields

25.1.152 Creating checkErrors Method
25.2.153 Using The checkErrors Method
25.3.154 Displaying Error Message On Name Field On Form
25.4.155 Displaying Error Message On Other Fields On Form
25.5.156 Implementing clearErrors Method

26. Handling Server-Side Errors

26.1.157 Introducing Handling Server-Side Errors
26.2.158 Adding Properties To Component State And Writing Error Messages To State
26.3.159 Server-Error Handling Workflow
26.4.160 Creating ErrorMessages Component
26.5.161 Clearing Server-Side Errors Upon Successful Save
26.6.162 Preventing Duplicate Rendering Of Same Error Message
26.7.163 Preventing Form Submission When There Are Client-Side Errors
26.8.164 Toggling The Form View On And Off

27. Creating And Using Form Input Components

27.1.165 Introducing Form Input Components
27.2.166 Creating Form Input Component
27.3.167 Creating A TextArea Component
27.4.168 Creating A Button Component
27.5.169 Using Input Components
27.6.170 Using React Children
27.7.171 Creating A Generic Form Component
27.8.172 Using The Generic Form In NewProductForm Component
27.9.173 Creating ProductForm Component
27.10.174 Fixing Undefined Props Error

28. Introducing User Management

28.1.175 User Management
28.2.176 Implementing User Registration
28.3.177 Adding Signup Event Handlers
28.4.178 Setting Current User Variable
28.5.179 Fetching The Current User From The Database
28.6.180 Redirecting To Home Page Upon Signup
28.7.181 Activating An Event In The Parent Component From The Child
28.8.182 Passing Current User As A Prop From App Component To The Header Component
28.9.183 Implementing Signup Client-Side Error Handling
28.10.184 Preventing Signup Form Submission There Are Client-Side Errors
28.11.185 Handling Signup Server-Side Errors
28.12.186 Implementing Signing Users Out In React
28.13.187 Signing Users Out And Redirecting To Home Page
28.14.188 Implementing Sign In Form
28.15.189 Adding Signin Event Handlers
28.16.190 Implementing Sign In Form handleSubmit Handler
28.17.191 Implementing handleSignin Method
28.18.192 Displaying Signin Server Error Messages
28.19.193 Preventing Rendering Of Signin Component If Signed In Already
28.20.194 Hiding Some Nav Links
28.21.195 Assigning Owners To Products

29. Editing And Deleting A Product

29.1.196 Introducing Editing And Deleting Products
29.2.197 Protecting The Edit And Delete Product Buttons
29.3.198 Creating The Editing Component
29.4.199 Implementing Editing Product
29.5.200 Implementing getProduct Method
29.6.201 Updating Product
29.7.202 Implementing Client-Side Error Handling
29.8.203 Implementing handleProductUpdate Method
29.9.204 Updating Parent Component
29.10.205 Responding To Product Update Requests With JSON Data
29.11.206 Preventing Unauthorized Editing of Products
29.12.207 Preventing Retrieval Of Non-Existent Products
29.13.208 Implementing Code To Pass Error Message To ProductList Component
29.14.209 Modifying ErrorMessages Component To Render Flash Messages
29.15.210 Using React Hooks
29.16.211 Deleting A Product

30. Higher-Order Components

30.1.212 Introducing Higher-Order Components (HOCs)
30.2.213 Higher-Order Functions
30.3.214 Implementing Higher-Order Components
30.4.215 Implementing Product Form Higher-Order Component
30.5.216 Moving The Common Code From The Form Components Into The HOC
30.6.217 Passing Event Handlers Down

31. Adding Comments To Products In The React Front-End

31.1.218 Introducing Adding Comments To Products
31.2.219 Creating CommentList Component
31.3.220 Creating Comment Component
31.4.221 Rendering The CommentList Component In The ProductDetail Component
31.5.222 Creating The Api's Comments Controller's
31.6.223 Retrieving Comments Together With Products
31.7.224 Handling Comments Not Found Error
31.8.225 Formatting Date
31.9.226 Creating CommentForm Homework
31.10.227 Creating CommentForm Component
31.11.228 Implementing Comments Client-Side Error Handlers
31.12.229 Implementing Comments' handleSubmit Handler
31.13.230 Implementing CommentForm Component Server-Side Error Handling
31.14.231 Implementing handleCommentSubmit Method
31.15.232 Adding Comment Create Action
31.16.233 Protecting The CommentForm From Unauthorized Access