module CountdonwTimer
  class Timer
    class << self
      def set_timer(year, month = 1, day = 1, hour = 0, min = 0)
        now = Time.now.to_i
        destination_time = Time.new(year, month, day, hour, min).to_i
        remaining_day = 0

        if now > destination_time
          hour = (now - destination_time) / 60 / 60
          remaining_day = hour / 24 if hour > 24
          remaining_hour = hour - (remaining_day * 24)
          remaining_min = (now - destination_time) / 60 % 60
        else
          hour = (destination_time - now) / 60 / 60
          remaining_day = hour / 24 if hour > 24
          remaining_hour = hour - (remaining_day * 24)
          remaining_min = (now - destination_time) / 60 % 60
        end

        return "#{remaining_day}:#{remaining_hour}:#{remaining_min}"
      end
    end

    def set_timer(year, month = 1, day = 1, hour = 0, min = 0)
      now = Time.now.to_i
      destination_time = Time.new(year, month, day, hour, min).to_i
      remaining_day = 0

      if now > destination_time
        hour = (now - destination_time) / 60 / 60
        remaining_day = hour / 24 if hour > 24
        remaining_hour = hour - (remaining_day * 24)
        remaining_min = (now - destination_time) / 60 % 60
      else
        hour = ( destination_time - now) / 60 / 60
        remaining_day = hour / 24 if hour > 24
        remaining_hour = hour - (remaining_day * 24)
        remaining_min = (now - destination_time) / 60 % 60
      end

      return "#{remaining_day}:#{remaining_hour}:#{remaining_min}"
    end
  end
end
