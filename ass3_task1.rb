class Lasagna 
      print "Expected time in oven is "
      puts EXPECTEDTIME=40
      
      def remaining_minutes_in_oven(time)
          @time=time
           puts "Remaining time in oven is #{ @remaining_time=40-@time}"
    
      end
      def preparation_time_in_minutes(layer)
          @layer=layer
          @preptime=@layer*2
         
      end
       puts "Prepration time in oven is #{@preptime}"
       
      def total_time_in_minutes(layer,actualtime)
          @actualtime=actualtime
          @totallayer=preparation_time_in_minutes(layer)
         puts "Total working time in oven is #{@totaltime =@totallayer.to_i+ @actualtime.to_i}"
          
      end
  end
      

lasagna=Lasagna.new()
lasagna.remaining_minutes_in_oven(30)
lasagna.preparation_time_in_minutes(2)
lasagna.total_time_in_minutes(3, 20)

