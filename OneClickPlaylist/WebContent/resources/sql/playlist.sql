DROP TABLE playlist;
CREATE TABLE IF NOT EXISTS playlist(
	p_id VARCHAR(10) NOT NULL,
	p_name TEXT,
	p_description TEXT,
	p_melonLink TEXT,
	p_genieLink TEXT,
	p_bugsLink TEXT,
	p_youtubeLink TEXT,
	p_imgName VARCHAR(20),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;

desc playlist;