# Videoawesome

Videoawesome is a Video URL parser designed to take the "Share" links you cna get form the likes of Youtube and Vimeo and convert them into actual videos right there on your screen.

## Install

its pretty simple to install in your Gemfile add the following line:

    gem 'videawesome'

if you are not working specifically in a Rails applicaiton then do the following:

    gem install 'videawesome'

run the 'bundle' command and you're good to go.

## Usage

Once you've added Videawesome to your Gemfile and bundled next you'll be wanting to know how to use it well this is actually relaly simple say we have a blog we want to display videos in, your blog consists of a title and body, using Videawesome your view would look something like this:
    
    <%= @article.title %>
    <%= raw(Videawesome::Convertor.parse_video(@article.body, 480, 640) %>

basically the main parameters you need to pass to this helper are:

 1. the text in which you video may or may not be inlcuded in in this case (@article.body)
 2. the width you want the video to be (480)
 3. the height of your video (640)
 

### Which video services does this work with?

At present it only works with YouTube and Vimeo however I am in the process of working on adding others I will update the Readme as I add them.

### What should the links used look like and where can I get them from?

This differs depending on the Site the video is hosted on:

#### Youtube
 When viewing the Youtube site there is usually a button underneath the video window which says "Share" click this and it will open up and inside there you will find a text field inside that text field is a URL, copy and paste that anywhere in the body of your text and watch the magic happen right before your eyes.

The URL should be along these lines: http://www.youtube.com/watch?v=xSE9Qk9wkig
#### Vimeo
When Viewing the Vimeo site actually on the video window you will see a button which says "Share" click this and a popup will open, in this popup there will be a link which reads "Preview your share email" click this and the URL you ned to copy and paste will be revealed.

Once again paste this URL anywhere in the bodyof your article and watch as the tiny robots dance.

The URL should look similar to this: http://vimeo.com/20833462

If when using this you do find any problems please feel free to let me know.

