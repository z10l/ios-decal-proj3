# Project 3: Photo App

## Due
Wednesday, November 10 at 11:59 PM

## Description
Last week, we covered the basics of networking within iOS apps. Additionally, 
we have covered many UI techniques and different elements from the UIKit. 
This project will combine both concepts, and result in an app that displays
photos grabbed from 500px's API. You will be parsing JSON objects to display
photos and additional relevant information from the public feed. 

The parsing may be a bit tricky at first. Please refer to the official API
to see examples of the JSON format. We will also go over a quick demo either
via video, or in class lecture.
https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos.md


## Instructions
1. Fork the assignment's repository from (https://github.com/iosdecal).
2. Clone your forked repository to your local machine (the URL should contain
   YOUR_USERNAME/ios-decal-..).
3. **Create Photo app**
  * Required
    * Photo.swift - the model which represents a single Photo object
        * You only need to implement the init
    * FiveHundredPx.swift - the object which connects with the 500px API
        * You must implement the loadPhotos method
    * PhotosTableViewController.swift - Table View of Photos 
        * One photo per cell
    * Cells with the following:
        * UILabel for the Name
        * UILabel for the Photographer's username
        * UIImage of the Photo (from the url)
  * Optional
    * Toggle between different feeds (popular, highest rated, upcoming, etc.)
4. Add, commit, and push your modified file(s) to your forked remote repository.
