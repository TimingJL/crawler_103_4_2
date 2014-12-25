# encoding: UTF-8

desc "fb"
task :fb => :environment do
	
	browser = Watir::Browser.new :firefox
	browser.goto 'http://www.facebook.com/messages/hohsiang'
	#browser.goto 'https://www.facebook.com/' 
	#sleep 100;
	
	# input account & secret 
	browser.text_field(:name => 'email').set "jkandjsk@gmail.com"
	browser.text_field(:name => 'pass').set "j01090916"
	# click login 
	browser.input(:id => "u_0_1").click

	#puts browser.html
	# write message 
	browser.text_field(:name => 'message_body').set "hello"
	# click sent message 
	browser.input(:id => "u_0_s").click

	#開檔
	#File.open("/Users/teinakayuu/Desktop/projects/input.txt","r").each_line do |line|	
	#array = line.split(' ')

	#go to web 
	#browser.goto 'http://www.facebook.com/messages/#{array}'
	#browser.goto 'https://www.facebook.com/' 
	#sleep 100;
	
	#browser.text_field(:name => 'message_body').set "hello"
	#browser.input(:id => "u_0_s").click
	
end