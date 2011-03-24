# Videoawesome

Videoawesome is a Video URL parser designed to take the "Share" links you cna get form the likes of Youtube and Vimeo and convert them into actual videos right there on your screen.

## Install

its pretty simple to install in your Gemfile add the following line:

gem 'videawesome'

run the 'bundle' command and you're good to go.

## Usage

Once you've added Videawesome to your Gemfile and bundled next you'll be wanting to know how to use it well this is actually relaly simple say we have a blog we want to display videos in, your blog consists of a title and body, using Videawesome your view would look something like this:

  <%= @article.title %>
  <%= raw(Videawesome::Convertor.parse_video(@article.body, 480, 640) %>

basically the main parameters you need to pass to this helper are 
1. the text in which you video may or may not be inlcuded in in this case (@article.body)
2. the width you want the video to be (480)
3. the height of your video (640)
 
