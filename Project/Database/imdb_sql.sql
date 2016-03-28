3396877	The Shawshank Redemption
2436058 Aliens

SELECT movie_info_idx.info title.title 
FROM movie_info_idx, title 
WHERE movie_info_idx.movie_id = title.id AND movie_info_idx.info_type_id = 101 AND movie_info_idx.info > 7.5


SELECT movie_info_idx.info AS Rating, title.title AS Title, movie_info.info 
FROM movie_info_idx, title, movie_info
WHERE movie_info_idx.movie_id = title.id AND movie_info.movie_id = title.id AND title.kind_id = 1 
AND movie_info_idx.info_type_id = 101 AND movie_info_idx.info > 9
ORDER BY movie_info_idx.info DESC

select info_type_id, info from movie_info where info_type_id = 1 and movie_id = 3396877

1	runtimes
3	genres
101	rating
105	budget
107	gross

1	runtimes
2	color info
3	genres
4	languages
5	certificates
8	countries
10	keywords
11	alternate versions
12	crazy credits
13	goofs
15	quotes
16	release dates
18	locations
19	mini biography
20	birth notes
21	birth date
22	height
23	death date
25	other works
26	birth name
27	salary history
28	nick names
29	books
30	agent address
31	biographical movies
32	portrayed in
35	interviews
36	article
37	magazine cover photo
38	pictorial
39	death notes
40	LD disc format
41	LD year
42	LD digital sound
43	LD official retail price
44	LD frequency response
45	LD pressing plant
46	LD length
47	LD language
48	LD review
49	LD spaciality
50	LD release date
51	LD production country
52	LD contrast
53	LD color rendition
54	LD picture format
55	LD video noise
56	LD video artifacts
57	LD release country
58	LD sharpness
59	LD dynamic range
60	LD audio noise
61	LD color information
62	LD group genre
63	LD quality program
64	LD close captions-teletext-ld-g
65	LD category
66	LD analog left
67	LD certification
68	LD audio quality
69	LD video quality
70	LD aspect ratio
71	LD analog right
72	LD additional information
73	LD number of chapter stops
74	LD dialogue intellegibility
75	LD disc size
76	LD master format
77	LD subtitles
78	LD status of availablility
79	LD quality of source
80	LD number of sides
81	LD video standard
82	LD supplement
83	LD original title
84	LD sound encoding
85	LD number
86	LD label
87	LD catalog number
88	LD laserdisc title
89	screenplay-teleplay
90	novel
91	adaption
92	book
93	production process protocol
94	printed media reviews
95	essays
96	other literature
97	mpaa
98	plot
99	Distribution
100	Votes
101	rating
102	production dates
103	copyright holder
104	filming dates
105	budget
107	gross
108	opening weekend
109	rentals
110	admissions
113	bottom 10 rank


SELECT title.title AS Title, 
movie_info_idx.info AS Rating, 
(SELECT SUM(movie_info_idx.info) FROM movie_info_idx WHERE movie_info_idx.movie_id = title.id AND movie_info_idx.info_type_id = 100) AS Votes,
(SELECT SUM(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 105) AS Budget,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 1) AS Runtimes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 107 AND movie_info.info LIKE '%Worldwide%') AS World_Gross,
(SELECT movie_info.info FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 8 LIMIT 1) AS Country,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Action') AS Action,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adventure') AS Adventure,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adult') AS Adult,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Animation') AS Animation,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Comedy') AS Comedy,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Crime') AS Crime,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Documentary') AS Documentary,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Drama') AS Drama,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Fantasy') AS Fantasy,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Family') AS Family,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Film-Noir') AS FilmNoir,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Horror') AS Horror,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Musical') AS Musical,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Mystery') AS Mystery,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Romance') AS Romance,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Sci-Fi') AS SciFi,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Short') AS Short,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Thriller') AS Thriller,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'War') AS War,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Western') AS Western
FROM movie_info_idx, title, movie_info
WHERE title.id IN (SELECT movie_id FROM movie_info_idx WHERE movie_info_idx.info_type_id = 100 AND movie_info_idx.info > 1000000)
AND movie_info.movie_id = title.id
AND movie_info.movie_id = movie_info_idx.movie_id
AND movie_info_idx.movie_id = title.id 
AND movie_info_idx.info_type_id = 101
AND title.kind_id = 1
GROUP BY title.id
ORDER BY Rating, Votes DESC

SELECT title.title AS title, 
movie_info_idx.info AS rating, 
(SELECT movie_info_idx.info FROM movie_info_idx WHERE movie_info_idx.movie_id = title.id AND movie_info_idx.info_type_id = 100) AS votes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 105 AND movie_info.info LIKE '%$%') AS budget,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 1) AS runtimes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 107 AND movie_info.info LIKE '%Worldwide%') AS world_gross,
(SELECT movie_info.info FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 8 LIMIT 1) AS country,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Action') AS Action,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adventure') AS Adventure,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adult') AS Adult,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Animation') AS Animation,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Comedy') AS Comedy,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Crime') AS Crime,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Documentary') AS Documentary,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Drama') AS Drama,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Fantasy') AS Fantasy,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Family') AS Family,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Film-Noir') AS FilmNoir,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Horror') AS Horror,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Musical') AS Musical,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Mystery') AS Mystery,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Romance') AS Romance,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Sci-Fi') AS SciFi,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Short') AS Short,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Thriller') AS Thriller,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'War') AS War,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Western') AS Western
FROM movie_info_idx, title, movie_info
WHERE title.id IN (SELECT movie_id FROM movie_info_idx, title WHERE movie_info_idx.movie_id = title.id AND title.kind_id = 1 AND movie_info_idx.info_type_id = 100 AND movie_info_idx.info > 1000)
AND movie_info.movie_id = title.id
AND movie_info.movie_id = movie_info_idx.movie_id
AND movie_info_idx.movie_id = title.id 
AND movie_info_idx.info_type_id = 101
GROUP BY title.id
ORDER BY Rating, Votes DESC


SELECT title.title AS title, 
movie_info_idx.info AS rating, 
(SELECT movie_info_idx.info FROM movie_info_idx WHERE movie_info_idx.movie_id = title.id AND movie_info_idx.info_type_id = 100) AS votes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 105) AS budget,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 1 AND movie_info.info NOT LIKE '%:%') AS runtimes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 107 AND movie_info.info LIKE '%Worldwide%') AS world_gross,
(SELECT movie_info.info FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 8 LIMIT 1) AS country,
(SELECT ISNULL (1,0) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Action') AS Action,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adventure') AS Adventure,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adult') AS Adult,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Animation') AS Animation,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Comedy') AS Comedy,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Crime') AS Crime,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Documentary') AS Documentary,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Drama') AS Drama,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Fantasy') AS Fantasy,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Family') AS Family,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Film-Noir') AS FilmNoir,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Horror') AS Horror,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Musical') AS Musical,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Mystery') AS Mystery,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Romance') AS Romance,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Sci-Fi') AS SciFi,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Short') AS Short,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Thriller') AS Thriller,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'War') AS War,
(SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Western') AS Western
FROM movie_info_idx, title, movie_info
WHERE title.id IN (SELECT movie_id FROM movie_info_idx, title WHERE movie_info_idx.movie_id = title.id AND title.kind_id = 1 AND movie_info_idx.info_type_id = 100 AND movie_info_idx.info > 1000)
AND movie_info.movie_id = title.id
AND movie_info.movie_id = movie_info_idx.movie_id
AND movie_info_idx.movie_id = title.id 
AND movie_info_idx.info_type_id = 101
AND title.kind_id = 1
GROUP BY title.id
ORDER BY movie_info_idx.info DESC

SELECT title.title AS Title, 
movie_info_idx.info AS Rating, 
(SELECT movie_info_idx.info FROM movie_info_idx WHERE movie_info_idx.movie_id = title.id AND movie_info_idx.info_type_id = 100) AS Votes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 1 AND movie_info.info NOT LIKE '%:%') AS Runtimes,
REPLACE((SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 105 AND movie_info.info LIKE '%$%'),'Worldwide','') AS Budget,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 107 AND movie_info.info LIKE '%Worldwide%') AS World_Gross,
(SELECT movie_info.info FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 8 LIMIT 1) AS Country,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Action'), 0) AS Action,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adventure'), 0) AS Adventure,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adult'), 0) AS Adult,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Animation'), 0) AS Animation,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Comedy'), 0) AS Comedy,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Crime'), 0) AS Crime,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Documentary'), 0) AS Documentary,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Drama'), 0) AS Drama,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Fantasy'), 0) AS Fantasy,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Family'), 0) AS Family,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Film-Noir'), 0) AS FilmNoir,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Horror'), 0) AS Horror,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Musical'), 0) AS Musical,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Mystery'), 0) AS Mystery,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Romance'), 0) AS Romance,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Sci-Fi'), 0) AS SciFi,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Short'), 0) AS Short,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Thriller'), 0) AS Thriller,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'War'), 0) AS War,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Western'), 0) AS Western
FROM movie_info_idx, title, movie_info
WHERE title.id IN (SELECT movie_id FROM movie_info_idx, title WHERE movie_info_idx.movie_id = title.id AND title.kind_id = 1 AND movie_info_idx.info_type_id = 100 AND movie_info_idx.info > 1000000)
AND movie_info.movie_id = title.id 
AND movie_info.movie_id = movie_info_idx.movie_id
AND movie_info_idx.movie_id = title.id 
AND movie_info_idx.info_type_id = 101
GROUP BY title.id
ORDER BY Rating, Votes DESC

SELECT title.title AS Title, 
movie_info_idx.info AS Rating, 
(SELECT movie_info_idx.info FROM movie_info_idx WHERE movie_info_idx.movie_id = title.id AND movie_info_idx.info_type_id = 100) AS Votes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 1 AND movie_info.info NOT LIKE '%:%') AS Runtimes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 105 AND movie_info.info LIKE '%$%') AS Budget,
REPLACE((SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 107 AND movie_info.info LIKE '%Worldwide%' AND movie_info.info NOT LIKE '%except%'), '(Worldwide)', '') AS World_Gross,
(SELECT movie_info.info FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 8 LIMIT 1) AS Country,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Action'), 0) AS Action,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adventure'), 0) AS Adventure,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adult'), 0) AS Adult,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Animation'), 0) AS Animation,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Comedy'), 0) AS Comedy,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Crime'), 0) AS Crime,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Documentary'), 0) AS Documentary,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Drama'), 0) AS Drama,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Fantasy'), 0) AS Fantasy,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Family'), 0) AS Family,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Film-Noir'), 0) AS FilmNoir,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Horror'), 0) AS Horror,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Musical'), 0) AS Musical,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Mystery'), 0) AS Mystery,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Romance'), 0) AS Romance,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Sci-Fi'), 0) AS SciFi,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Short'), 0) AS Short,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Thriller'), 0) AS Thriller,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'War'), 0) AS War,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Western'), 0) AS Western
FROM movie_info_idx, title, movie_info
WHERE title.id IN (SELECT movie_id FROM movie_info_idx, title WHERE movie_info_idx.movie_id = title.id AND title.kind_id = 1 AND movie_info_idx.info_type_id = 100 AND movie_info_idx.info > 10000)
AND movie_info.movie_id = title.id 
AND movie_info.movie_id = movie_info_idx.movie_id
AND movie_info_idx.movie_id = title.id 
AND movie_info_idx.info_type_id = 101
GROUP BY title.id
ORDER BY Rating, Votes DESC

SELECT title.title AS Title, 
movie_info_idx.info AS Rating, 
(SELECT movie_info_idx.info FROM movie_info_idx WHERE movie_info_idx.movie_id = title.id AND movie_info_idx.info_type_id = 100) AS Votes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 1 AND movie_info.info NOT LIKE '%:%') AS Runtimes,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 105 AND movie_info.info LIKE '%$%') AS Budget,
(SELECT MAX(movie_info.info) FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 107 AND movie_info.info LIKE '%Worldwide%' AND movie_info.info NOT LIKE '%except%' LIMIT 1) AS World_Gross,
(SELECT movie_info.info FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 8 LIMIT 1) AS Country,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Action'), 0) AS Action,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adventure'), 0) AS Adventure,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Adult'), 0) AS Adult,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Animation'), 0) AS Animation,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Comedy'), 0) AS Comedy,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Crime'), 0) AS Crime,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Documentary'), 0) AS Documentary,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Drama'), 0) AS Drama,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Fantasy'), 0) AS Fantasy,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Family'), 0) AS Family,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Film-Noir'), 0) AS FilmNoir,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Horror'), 0) AS Horror,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Musical'), 0) AS Musical,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Mystery'), 0) AS Mystery,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Romance'), 0) AS Romance,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Sci-Fi'), 0) AS SciFi,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Short'), 0) AS Short,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Thriller'), 0) AS Thriller,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'War'), 0) AS War,
IFNULL ((SELECT 1 FROM movie_info WHERE movie_info.movie_id = title.id AND movie_info.info_type_id = 3 AND movie_info.info = 'Western'), 0) AS Western
FROM movie_info_idx, title, movie_info
WHERE title.id IN (SELECT movie_id FROM movie_info_idx, title WHERE movie_info_idx.movie_id = title.id AND title.kind_id = 1 AND movie_info_idx.info_type_id = 100 AND movie_info_idx.info > 1000000)
AND movie_info.movie_id = title.id 
AND movie_info.movie_id = movie_info_idx.movie_id
AND movie_info_idx.info_type_id = 101
GROUP BY title.id
ORDER BY Rating, Votes DESC