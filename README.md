# EduEra Api
Restful API for Eduera online course, you can:
> data response in JSON format

- Create a course with a name and release date.
- Read the data of all courses.
- Read the details of a specific course using ID.
- Update a specific course using an ID.
- Delete a specific course using an ID.

Technologies:

- Ruby on Rails.
- Postgresql.


## Live server:
You can test the live server of EduEra api: 
https://dashboard.heroku.com/apps/eduera/courses

1. Show all courses:

        get request to:
         https://dashboard.heroku.com/apps/eduera/courses


2. Show a specific course:

        get request to:
         https://dashboard.heroku.com/apps/eduera/courses/course-id


3. Create a new course:

         post request to:
         https://dashboard.heroku.com/apps/eduera/courses/

         body:{
                 "name":"Name of the course"
                }

4. Update the name of a specific course:
- >note: you can only modify the name of the course

        put request to:
                 https://dashboard.heroku.com/apps/eduera/courses/course-id

        body:
         {
                 "name":"New course Name"
         }

5. Delete a specific course:

         delete request to:
                 https://dashboard.heroku.com/apps/eduera/courses/course-id



## How to start the server locally:
> Postgresql need to be installed in your local machine to run this api

1. Install dependencies:

        bundle install 

2. Create the database on Postgresql:

        rake db:create

2. Start the server:

        rails s
