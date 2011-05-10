module Videawesome
  class Convertor
    
    URL = /http\:\/\/[www.youtube||a-z]+\.[a-z]{2,3}\/[a-zA-Z0-9*\/]{3,15}/
    IDENT = /[a-zA-Z0-9]{3,15}$/

    def self.youtube_video(url, text, height, width)
      url_ident =url.scan(IDENT).to_s
      altered_text = text.gsub(url,"<iframe title='YouTube video player' class='youtube-player' type='text/html' width='#{width}' height='#{height}' src='http://www.youtube.com/v/#{url_ident}' frameborder='0'></iframe><br /><small> dont have flash player installed? <a href=\"http://www.youtube.com/v/#{url_ident}\" target=\"_blank\">click here</a></small>")
    end

    def self.vimeo_video(url, text, height, width)
      url_ident = url.scan(IDENT).to_s
      altered_text =  text.gsub(url,"<iframe title='Vimeo Video Player' src='http://player.vimeo.com/video/#{url_ident}' width='#{width}' height='#{height}' frameborder='0'></iframe><br /> <small>dont have flash player installed? <a href=\"http://player.vimeo.com/video#{url_ident}\" target=\"_blank\">click here</a></small>")
    end

    def self.parse_video(text, height, width)
      url = text.split.grep(URL).to_s
      
      if url != "" && url.match("youtube.com") || url.match("youtu.be")
        text = youtube_video(url, text, height, width)
      elsif url != "" && url.match("vimeo.com")
        text = vimeo_video(url, text, height, width)
      end
      return text
    end

  end
end
