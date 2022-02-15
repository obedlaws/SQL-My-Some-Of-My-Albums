CREATE TABLE public.albums (
	album_name VARCHAR(50),
  	artist_or_band VARCHAR(50) PRIMARY KEY,
	release_date DATE,
	publishing_label VARCHAR(50) PRIMARY KEY
);

CREATE TABLE public.labels (
	label_name VARCHAR(50) FOREIGN KEY REFERENCES albums(publishing_label),
  	foundation_date DATE,
	main_genre VARCHAR(50)
);

CREATE TABLE public.artistband (
	name VARCHAR(50) FOREIGN KEY REFERENCES albums(),
	genre VARCHAR(50),
	total_album_sales_copies int
);