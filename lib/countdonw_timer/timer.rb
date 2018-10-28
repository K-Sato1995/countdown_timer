module CountdonwTimer
  class Timer
    class << self
      def set_timer(year, month = 1, day = 1, hour = 0, min = 0)
        result_day = 0
        result_hour = 0
        result_min = 0

        now = Time.now.to_i
        destination_time = Time.new(year, month, day, hour, min).to_i
        hour = (now - destination_time)/60/60

        result_day = hour /24 if hour > 24
        result_hour = hour - (result_day * 24)
        result_min = (now - destination_time)/60 % 60
        return "#{result_day}:#{result_hour}:#{result_min}"
      end
    end

    def set_timer(year, month = 1, day = 1, hour = 0, min = 0)
      result_day = 0
      result_hour = 0
      result_min = 0

      now = Time.now.to_i
      destination_time = Time.new(year, month, day, hour, min).to_i
      hour = (now - destination_time)/60/60

      result_day = hour /24 if hour > 24
      result_hour = hour - (result_day * 24)
      result_min = (now - destination_time)/60 % 60
      return "#{result_day}:#{result_hour}:#{result_min}"
    end
  end
end
