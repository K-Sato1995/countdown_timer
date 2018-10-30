module CountdownTimer
  class Timer
    class << self
      def set_timer(year, month = 1, day = 1, hour = 0, min = 0, sec = 0)
        now = Time.now.to_i
        destination_time = Time.new(year, month, day, hour, min, sec).to_i
        remaining_day = 0

        if now > destination_time
          total_secs = now - destination_time
          total_hours = total_secs / 60 / 60
          remaining_day = total_hours / 24 if total_hours > 24
          remaining_hour = total_hours - (remaining_day * 24)
          remaining_min = total_secs / 60 % 60
          remaining_sec = total_secs - ((remaining_day * 24 * 60 * 60) + (remaining_hour * 60 * 60) + (remaining_min * 60))
        else
          total_secs = destination_time - now
          total_hours = total_secs / 60 / 60
          remaining_day = total_hours / 24 if total_hours > 24
          remaining_hour = total_hours - (remaining_day * 24)
          remaining_min = total_secs / 60 % 60
          remaining_sec = total_secs - ((remaining_day * 24 * 60 * 60) + (remaining_hour * 60 * 60) + (remaining_min * 60))
        end

        return "#{remaining_day}/#{remaining_hour}:#{remaining_min}:#{remaining_sec}"
      end
    end
  end
end
