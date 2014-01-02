require 'etc'
require 'active_support/core_ext/integer/inflections'
require 'active_support'
  def greeting
    today = Time.now
    day = today.strftime("%A")
    month =  Date::MONTHNAMES[Date.today.month]
    user = Etc.getlogin
    puts "Welcome #{user}, Today is #{day} the #{today.day.ordinalize} of #{month}, #{today.year}"
    sleep 2
    system ("clear")
  end


  def applications
    @app = []
    puts "The following programs will be opened"
    puts @app.each {|x|}
    sleep 1
    p "Do you wish to contine Y/N ?"
    #Add the Disered programs to the array above as the are named in your
    #Applications folder. Note if the app name contans a space name like so
    # 'Folder\ with\ a\ space\'
  end

  def open_apps
    if @app == []
      puts "********" 
      puts "Please add applications to the @app array".upcase
      puts "********"
    else
      @yn = gets.chomp
      case @yn
      when 'y', 'Y', 'yes', 'YES', 'yeah', 'yea'
         @app.each do |i|
         system("open ~/../../Applications/#{i}.app")
        end
      when 'no', 'n', 'NO', 'No'
      nil
    else
      puts 'Please enter Yes or No'
      open_apps
      end
    end
  end

greeting
applications
open_apps


