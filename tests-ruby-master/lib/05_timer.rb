def time_string(x)
    Time.at(x).utc.strftime("%H:%M:%S")
end