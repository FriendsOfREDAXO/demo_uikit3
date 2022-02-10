# UIKit3 Demo for REDAXO 5

![Screenshot](https://github.com/FriendsOfREDAXO/demo_uikit3/blob/assets/screen.jpg?raw=true)

This demo demonstrates how to build a REDAXO website with UIKit3. 

This demo requires a utf8m4 compatible database. 

## What it is

It is a demo. It shows a possible implementation of a web presence for learning purposes. It can be used as a starting point for your own projects. 

## What it's not

It is not a ready web presence for live operation. Further steps are necessary for achieving this.  

## What's inside? 

- 4 modules (Cards, Content-Block / Slider, Iconlist, Headline) 
- Main template with subtemplates for easy conversion / exchange
- Navigation based on the Navigation_Array-AddOn
- Modules are built with MForm
- MP4 video output is supported

## Note

The demo installs the addon **theme_lock** to force the "Light Theme" in the backend. UIKit3 is also used in the backend for display, the darkmode unfortunately causes problems here.  

## Further development

The demo will be extended from time to time and errors will be corrected. So we are grateful for hints.

## Custom theme

A main folder uikit is created. There you will find the theme for the frontend. 
You can simply replace the dist folder with your own. 
If necessary, adjust the sources in the template. 
For the creation the Yarn-Workflow of UIKit is recommended. 

## Installation

1. the AddOn directory must have the name `demo_uikit3`; after unpacking copy it into the AddOn directory: `redaxo/src/addons`.
2. install the AddOn.
3. on the page "UIKit-Demo" click on "Install Demo".

The demo requires the following external AddOns (these can all be installed within REDAXO via the installer):

* CKEDITOR 5
* theme_lock
* mform
* mblock
