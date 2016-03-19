json.array! @courses.each do |course|
  json.id course.id
  json.fulladdress course.full_address
  json.latitude course.loc_LAT_poly
  json.longitude course.loc_LONG_poly
  json.name course.biz_name
  json.city course.e_city
end