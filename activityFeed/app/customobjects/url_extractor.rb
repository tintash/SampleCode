class URLExtractor
	require 'nokogiri'
	require 'open-uri'

	def get_title(doc)
		title = doc.xpath('/html/head/title')
		if !title.nil? and title.count > 0 and !title[0].nil?
			title = title[0].inner_html
		else
			title = ''
		end		
		title
	end
	
	def get_description(doc)
		description = doc.xpath("/html/head/meta[@name='description']")
		if description.count > 0
			description = description[0]["content"]
		else
			description = ''
		end
		description
	end

	
	def extract_video_contents(url)
		doc = Nokogiri::HTML(open(url))
		title = get_title(doc)
		description = get_description(doc)
		embed_tags = doc.xpath('//embed')
		
	end
	
	def is_text_url(text)
		if !text.nil?
			return (text.include? 'http://' or text.include? 'https://' or text.include? 'www')
		else
      return false
    end
	end
	
	def get_html_anchor(text)
		if !text.nil? and !text.blank?
			"<a href='"+text+"' target='_blank'>"+text+"</a>"
		else
      text
    end
	end
	
	def text_to_url(text)
		if !text.nil? and !text.blank?
			regex = /(http:\/\/|https:\/\/|www.)?\w/
			parts = text.split.grep(regex)
			parts.each do |one_part|
				if is_text_url(one_part)
					text = text.gsub(one_part, get_html_anchor(one_part))
				end
			end
    else
      text = ""
		end
    text
	end
  
  def get_text_from_url(text)
    return_text = ''
		if !text.nil? and !text.blank?
			regex = /(http:\/\/|https:\/\/|www.)?\w/
			parts = text.split.grep(regex)
			parts.each do |one_part|
				if !is_text_url(one_part)
					return_text += one_part + " "
				end
			end		
			return_text[0..return_text.length-2]
		else
      return_text
    end
	end
  
  def get_link_from_text(text)
    return_text = ''
		if !text.nil? and !text.blank?
			regex = /(http:\/\/|https:\/\/|www.)?\w/
			parts = text.split.grep(regex)
			parts.each do |one_part|
				if is_text_url(one_part)
					return one_part          
				end
			end		
			return_text[0..return_text.length-2]
		else
      return_text
    end
	end
end
