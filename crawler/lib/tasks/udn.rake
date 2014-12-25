# encoding: UTF-8

desc "udn"
task :udn => :environment do

	#final= "http://udndata.com/ndapp/Story2007?no=1&page=1&udndbid=udndata&SearchString=Kg%3D%3D&sharepage=10&select=1&kind=2&article_date=2014-10-29&news_id=7728332&showUserSearch=+%3Cstrong%3E%3Cfont+color%3D%23333333+class%3Dtitle03%3E%B1%7A%A5%48%3C%2Ffont%3E+%3Cfont+color%3D%23FF6600+class%3Dtitle04%3E*%3C%2Ffont%3E+%3Cfont+color%3D%23333333+class%3Dtitle03%3E%A6%40%B7%6A%B4%4D%A8%EC%3C%2Ffont%3E+%3Cfont+color%3D%23FF6600+class%3Dtitle04%3E11744177%3C%2Ffont%3E+%3Cfont+color%3D%23333333+class%3Dtitle03%3E%B5%A7%B8%EA%AE%C6%3C%2Ffont%3E%3C%2Fstrong%3E&firstFatherCateID=&collectCateNewsPage=1"
  	final= "http://www.cnyes.com/"
	
	browser = Watir::Browser.new :chrome

	browser.goto final
	puts browser.title
	puts browser.html

	# Enter 
	browser.a(:href => '/library/').click
	
	title = ''
    content = ''
      
      sleep 10
      
      browser.windows.last.use
      puts browser.title
     
      browser.windows.last.use
 	  puts browser.html
      	#if  td.valign == "top"	
      	#browser.inputs.each do |input| 
      	
      	 #puts "OK!"
      	 #puts td.text
      
      	#end
  	 #end
end