# Found in some inherited code, without tests.
#
# TODO:
#   Work out what this method does,
#   then write a test or spec to make sure you know what it does,
#   then refactor it such that your test or spec still passes, but the
#   rubyists who come after you don't have to think so hard.

def group_trip_days_by_lat_lng(trip_days)
  latlng = {}
  trip_days.each do |trip_day|
    latlng[trip_day.latitude] ||= {}
    latlng[trip_day.latitude][trip_day.longitude] ||= []
    latlng[trip_day.latitude][trip_day.longitude] << trip_day
  end
  organised_trip_days =[]
  latlng.values.each do |hash|
    hash.values.each do |trip_days|
      organised_trip_days << trip_days
    end
  end
  organised_trip_days
end
