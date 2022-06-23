# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

puts 'Seeding now...'

u1 = User.create(name: 'Johnny')
u2 = User.create(name: 'Sam')
u3 = User.create(name: 'Penelope')

TopArtistlist.create(user: u2, artistlist:  ['Nick Cave & The Bad Seeds',
                                             'Ichiko Aoba',
                                             'Tim Hecker',
                                             'The Lounge Lizards',
                                             'John Coltrane',
                                             'Rei Harakami',
                                             'Big Thief',
                                             'Luigi Tozzi',
                                             'Animal Collective',
                                             'Salamanda',
                                             'Kate Bush',
                                             'Wilco',
                                             'Boris',
                                             'caroline',
                                             'Black Country, New Road',
                                             'Steve Reich',
                                             'Yo La Tengo',
                                             'Fuubutsushi',
                                             'Radiohead',
                                             'Andrew Wasylyk',
                                             'Park Jiha',
                                             'Binker and Moses',
                                             'The Beatles',
                                             'Grandaddy',
                                             'black midi',
                                             'Grateful Dead',
                                             'Kara-Lis Coverdale',
                                             'Astrid Sonne',
                                             'Tujiko Noriko',
                                             'The Band',
                                             'Nils Frahm',
                                             'David Bowie',
                                             'Milton Nascimento',
                                             'Songs: Ohia',
                                             'John Lurie',
                                             'Sarah Davachi',
                                             'Spangle Call Lilli Line',
                                             'Laryssa Okada',
                                             'Pharoah Sanders',
                                             'Otoboke Beaver',
                                             'Peel Dream Magazine',
                                             'Ween',
                                             'The Smile',
                                             'Braid',
                                             'Chet Baker',
                                             'The Fall',
                                             'SASAMI',
                                             'Erik Hall',
                                             'Nubya Garcia',
                                             'Alabaster DePlume'])

puts 'Seeding done!'
