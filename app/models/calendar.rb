require 'date'
class Calendar < ActiveRecord::Base
    #class variable for days of the week
    @@days_of_week = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    
    def initialize(date = Date.today)
        @base_date = date - Date.mday + 1
    end
    
    def to_html
        date = @base_date - @base_date.wday
        stop = (date.next_month - 1) + (6 - date.next_month - 1).wday + 1
        
        puts "<table>"
            puts "<tr>"
                @@days_of_week.each do |day|
                    puts "<th>#{day}</th>"
                end
            puts "</tr>"
            
            puts "<tr>"
                while date != stop
                    if date.month == @base_date.montht
                        puts "<td>#{date.mday}</td>"
                    else
                        puts "<td>&nbsp;</td>"
                    end
                    if date.wday == 6
                        puts "</tr><tr>"
                    end
                    date = date.next
                end
                
            puts "</tr>"
        puts "</table>"
    end
    
    after_initialize :setup
    
    def self.days_of_week
        return @@days_of_week
    end
    
    def setup
        @base_date = Date.new(year, month)
        @weeks = []
    end
    
    def weeks
        #calculate starting point
        date = @base_date - @base_date.wday
        stop = (@base_date.next_month) + (6 - @base_date.next_month.wday + 1)
        week = []
    
        while date != stop
            week << date
            if date.wday == 6
                @weeks << week
                week = []
            end
            date = date.next
        end
        return @weeks
    end
   
end

