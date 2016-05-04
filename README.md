David Anderson, CS270 Assignment 10

Description:  Event Calendar application.

Input:  N/A

Output:  N/A


CS 270 Assignment 10
====================

In this assignment, we will create the Calendar functionality to display a monthly
calendar along with events.

Step 1
------
Modify the calendar migration to include a month and year fields as a string. Make
sure to drop the database and migrate it again.

Step 2
------
Create a controller action for calendars called `show`. In this controller, the
logic for displaying a calendar is as follows:

* if there are no params for month and year, create a new calendar object with
  the current day's month and year
* otherwise, create a new calendar object with the month and year params

Step 3
------
Create a view file for the calendar controller show action.

First, let's make the view display calendar days in monthly format.  The logic
should look something like this:

    for each calendar week
        for each day of that week
            display the day of the month
            
There are obviously more details to be filled in here, and it's left as an exercise
for you to figure it out...

Step 4
------
Write the code in the model to make the above work; I recommend the following:

* create a class variable that is an array of the days of the week
* you'll need to create a pseudo-constructor by using the after_initialize method

For the core model functionality, consider the following:

* The first date of a monthly calendar may not fall on the first day of the week. In
  that case, you must 'count backwards' to find the first day of the week.
* Same idea but in reverse for the last day of the month
* Assuming you are going to display the calendar as an HTML table (good idea), remember
  to generate a new row for each week

Step 5
------
Add in a link for each day on the calendar for which an event occurs.  The logic
of how to do this is left as an exercise...