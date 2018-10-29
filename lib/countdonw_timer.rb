require_relative "countdonw_timer/version"
require_relative "countdonw_timer/timer"

module CountdonwTimer
end


p CountdonwTimer::Timer.set_timer(2018, 10, 29, 23, 0)
