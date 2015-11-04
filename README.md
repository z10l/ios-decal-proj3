# Project 3: Photo Social Network App

## Due
Monday, November 16 at 11:59 PM

## Description
Last week, we covered the basics of networking within iOS apps. We have also
covered many UI techniques and different elements from UIKit.  This project will
combine both concepts, and result in an app that displays photos grabbed from
500px's API. 

500px is an online photo community. Think of it like Flickr, but more upscale
and professional. You will be parsing JSON objects to display the photos and
additional relevant information from their public feed. 

The parsing may be a bit tricky at first. Please refer to the official API to
see examples of the JSON format. We will also go over a quick demo either by
video or in lecture.
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
    * PhotosCollectionViewController.swift - Collection View of Photos 
        * One photo per cell
        * You must implement any necessary delegate methods
        * You must implement loadImageForCell
    * Cells with the following:
        * UILabel for the Name
        * UILabel for the Photographer's Username
        * UIImage of the Photo (from the URL)
  * Optional
    * Toggle between different feeds (Popular, Highest Rated, Upcoming, etc.)
    * Add GCD to use background threads for smoother loading
    * Add a NSCache for the images
4. Add, commit, and push your modified file(s) to your forked remote repository.
