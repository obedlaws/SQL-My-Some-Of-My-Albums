CREATE TABLE public.albums (
	album_name VARCHAR(50),
  	artist_or_band VARCHAR(50) UNIQUE,
	release_date DATE,
	publishing_label VARCHAR(50) UNIQUE
);

CREATE TABLE public.publishing_labels (
	name VARCHAR(50) REFERENCES albums (publishing_label),
  	foundation_date DATE,
	main_genre VARCHAR(50)
);

CREATE TABLE public.artistband (
	name VARCHAR(50) REFERENCES albums (artist_or_band),
	genre VARCHAR(50),
	total_album_sales_copies int
);