Museum.destroy_all
Painting.destroy_all
Artist.destroy_all

Museum.create name: 'Smithsonian'

Painting.create title: 'Mona Lisa',
	 			image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Mona_Lisa.jpg/792px-Mona_Lisa.jpg'
	 			museum_id: 1


Artist.create name: 'Da Vinci'

Museum.create name: 'MOMA'

Painting.create title: 'Abstract',
	 			image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Mona_Lisa.jpg/792px-Mona_Lisa.jpg'
	 			museum_id: 2


Artist.create name: 'Van Gogh'

