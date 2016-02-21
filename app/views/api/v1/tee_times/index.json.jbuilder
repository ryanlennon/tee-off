json.array! @teetimes.each do |teetime|
  json.id teetime.id
  json.start_time teetime.start_time
end