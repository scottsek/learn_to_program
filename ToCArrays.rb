#Table of Contents
line_width = 50
titles = ['Getting Started', 'Numbers', 'Letters']
pages = [1,9,13]
titles.each_with_index do |one_title, title_index|
	chap_title = 'Chapter' + (title_index + 1).to_s.rjust(2) + ':  ' + one_title
	page_chap = 'page' + pages[title_index].to_s.rjust(3)
	puts chap_title.ljust(line_width*4/5) + page_chap.rjust(line_width*1/5)
end