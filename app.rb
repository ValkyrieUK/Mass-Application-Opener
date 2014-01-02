require 'etc'
require 'active_support/core_ext/integer/inflections'
@today = Time.now
@day = @today.strftime("%A")
@month =  Date::MONTHNAMES[Date.today.month]
@user = Etc.getlogin

@app = ['Skype', 'Microsoft\ Lync', 'Google\ Chrome', 'Microsoft\ Office\ 2011/Microsoft\ Outlook']
#Add the Disered programs to the array above as the are named in your
#Applications folder. Note if the app name contans a space name like so
# 'Folder\ with\ a\ space\'


p "Welcome #{@user}, Today is #{@day} the #{@today.day.ordinalize} of #{@month}, #{@today.year}"
sleep 1
system ("clear")
p "The following programs will be opened"


@app.each {|x| p x }
p "Do you wish to contine Y/N ?"


sleep 2
@yn = gets.chomp

case @yn
when 'y', 'yes', 'yeah', 'yea'
  @app.each do |i|
   system("open ~/../../Applications/#{i}.app")
  end

end