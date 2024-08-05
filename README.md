Robot Framework Test Suite

This repository contains scripts for API testing and webpage automation using the Robot Framework.

Test cases

1.API Testing Using custom-built Python Library
Example: pythonApiTest.robot
Script by this name verifies API COde and format using custom python library

2.API Testing
Scripts under this section are designed to test the functionality of APIs using the Robot Framework. 
The tests include verifying response codes, data formats, and handling different parameter scenarios.

Example: API.robot
Description:
Tests the Data USA API.
Verifies successful data retrieval and correct response formats.
Checks response behavior with incorrect parameters.

3.Webpage Automation: Invalid Login Testing
This script tests the invalid login scenarios for a web application. It verifies the application's 
response to incorrect username and password combinations using SeleniumLibrary for browser automation. 
The tests ensure proper error handling and messaging.

4.Webpage Automation: Drag and Drop Testing
This script tests the drag-and-drop functionality on a practice web page. 
It verifies element presence and performs browser interactions using SeleniumLibrary.

5.Webpage Automation: Mouse Actions Testing
This script automates mouse actions like drag-and-drop on a test page using SeleniumLibrary. 
It verifies interactions by performing actions such as dragging an image to a target area and logging the page title.

6.Webpage Automation: Form Interaction Testing
This script automates form interactions on an online admission page, including filling out fields, selecting options, 
and inputting data. It also logs the Selenium speed setting and closes the browser.

7.Webpage Automation: Alert Handling and Page Interaction
This script handles alert dialogs and performs various browser interactions, including scrolling and taking screenshots.
It navigates through pages, captures screenshots of specific elements and the entire page, and manages browser navigation.

8.Webpage Automation: Amazon Search Functionality
This script automates the process of searching for "socks" on Amazon. It verifies that the search input box is enabled and visible, 
performs the search, and then closes the browser.


Usage
robot Automation\<script_name>.robot

