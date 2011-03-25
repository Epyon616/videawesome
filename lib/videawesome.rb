module Videawesome
  class Convertor
    def self.youtube_video(url, text, height, width)
    ident_regexp = /[a-zA-Z0-9]{11}/
    url_ident =url.scan(ident_regexp).to_s
    altered_text = text.gsub(url,"<iframe title='YouTube video player' class='youtube-player' type='text/html' width='#{width}' height='#{height}' src='http://www.youtube.com/v/#{url_ident}' frameborder='0'></iframe><br /><small> dont have flash player installed? <a href=\"http://www.youtube.com/v/#{url_ident}\" target=\"_blank\">click here</a></small>")
  end

  def self.vimeo_video(url, text, height, width)
    ident_regexp = /\/[0-9]{3,}/
    url_ident = url.scan(ident_regexp).to_s
    altered_text =  text.gsub(url,"<iframe title='Vimeo Video Player' src='http://player.vimeo.com/video#{url_ident}' width='#{width}' height='#{height}' frameborder='0'></iframe><br /> <small>dont have flash player installed? <a href=\"http://player.vimeo.com/video#{url_ident}\" target=\"_blank\">click here</a></small>")
  end

  def self.parse_video(text, height, width)
    youtube_regexp = /(ht)tp\:\/\/[www.youtube||vimeo]+\.(com)/
    url = text.split.grep(youtube_regexp).to_s
   
    if url != "" && url.match("youtube.com")
      text = youtube_video(url, text, height, width)
    elsif url != "" && url.match("vimeo.com")
      text = vimeo_video(url, text, height, width)
    end
    return text
  end
  end
end
