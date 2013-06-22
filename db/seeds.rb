# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


walk1 = Walk.create( name: 'Caffe Piccante to Unknown Road', song_link: 'http://www.youtube.com/watch?v=-fUPHfn3J6Q' )
walk1.walk_points << WalkPoint.create(
  location: 'Caffe Piccante',
  lat: '-37.784008',
  long: '144.983368' )
walk1.walk_points << WalkPoint.create(
  location: 'Unknown Road',
  lat: '-37.787132',
  long: '144.982544' )

walk2 = Walk.create( name: 'Polly to St David St', song_link: 'http://www.youtube.com/watch?v=0oz-ARe4csQ' )
walk2.walk_points << WalkPoint.create(
  location: 'Polly',
  lat: '-37.795120',
  long: '144.979034' )
walk2.walk_points << WalkPoint.create(
  location: 'St David St',
  lat: '-37.801224',
  long: '144.983902' )

walk3 = Walk.create( name: '30 Finsbury St to Lettuce Systems', song_link: 'http://www.youtube.com/watch?v=kRUyRuouppw' )
walk3.walk_points << WalkPoint.create(
  location: '30 Finsbury St',
  lat: '-37.785885',
  long: '144.930771' )
walk3.walk_points << WalkPoint.create(
  location: 'Lettuce Systems',
  lat: '-37.796574',
  long: '144.932587' )

walk4 = Walk.create( name: 'Flinders to Riverland Bar', song_link: 'http://www.youtube.com/watch?v=bj905HtsB-g' )
walk4.walk_points << WalkPoint.create(
  location: 'Flinders',
  lat: '-37.817497',
  long: '144.967575' )
walk4.walk_points << WalkPoint.create(
  location: 'Riverland Bar',
  lat: '-37.818649',
  long: '144.968704' )