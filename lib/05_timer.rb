# convert second as 00:00:00 
def time_string(time_sec)
      h = time_sec/3600
      m = (time_sec - (h*3600))/60
      s = (time_sec - (h*3600) - (m*60))
    return "#{h.to_s.rjust(2, "0")}:#{m.to_s.rjust(2, "0")}:#{s.to_s.rjust(2, "0")}"
    end 