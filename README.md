<h1>NSS Ruby Capstone - DeadSets App</h1>
[![Build Status](https://travis-ci.org/zkellerdevelops/deadsets.png)](https://travis-ci.org/zkellerdevelops/deadsets)

[![Code Climate](https://codeclimate.com/github/zkellerdevelops/deadsets.png)](https://codeclimate.com/github/zkellerdevelops/deadsets)

<h2>Purpose</h2>

<p>This is a Unix Command Line app I am building using Ruby for my capstone project for Nashville Software School.
The purpose is to create a way for fans of the band the Grateful Dead to look up concert setlists from the band's long and illustrious career of live performances.</p>


<h2>Project Status / To Do</h2>

<p>User entered dates are being parsed as url's and the corresponding setlist text is being printed to the terminal. Invalid conert dates raise an error message prompting the user to enter another date. Users can save a favorite show date to an SQL database, and recall those saved favorites dates for future reference.</p>



<h2>Usage Instructions</h2>

<p>App is launched from within the UNIX bash terminal via a UNIX system or OS X terminal application.

App will ask the user to enter a date of a desired concert from 1972 - 1995.

If the date entered corresponds with an actual Grateful Dead concert date, the program will parse the user entered date into a corresponding url from the http://www.cs.cmu.edu/~mleone/gdead/dead-sets website and print the concert setlist as text into the terminal window. This site contains all Grateful Dead setlists from 1972-1995 in txt format.

If the date entered does not correspond with a Grateful Dead concert date, the app will print a message telling the user that there was no concert on the date entered, and to enter another date.

Future functionality will include the ability to save favorite show dates to an active record database.<p>




<h2>Demo</h2>

<p>App must be downloaded and run from the UNIX terminal.</p>




<h2>License</h2>

<p>All code and logic, copyright © 2013 Zach Keller
All setlists, song titles, and anything having to do with the Grateful Dead are owned by Grateful Dead Productions (GDP)</p>
