# photogram-gui

Target: https://photogram-gui.matchthetarget.com/

Lesson: https://learn.firstdraft.com/lessons/153-photogram-gui

Video: https://share.descript.com/view/sYmmL9OgLIN

<hr>

Notes

1. Run the server by typing bin/dev in the terminal and view the web app on a browser.
2. The index page shows the default page since the routes are not yet defined.
3. Navigate to /rails/db. The tables are defined, but the data are not yet populated.
4. (7-8 min) Begin by examining the routes information on config/routes.rb. It is currently empty.
5. (9 min) To determine the number of sections needed for the web-page, navigate to ../rails/db to determine the titles of the available tables: comments, follow_requests, likes, photos, and users. there are five tables total.
6. (10 min) Populate table using the comment rake sample_data. Check it by going to ../rails/db. 
7. (17 min) Define the routes. Follow the RCAV method. Also create the layout page. Look at the target as a guide. 
8. The models classes have been made for you. It is placed in models folder.
9. (19 min) Create list of users page.
10. (35 min) Create users table.
11. (36 min) populate table in specific user using a loop.
