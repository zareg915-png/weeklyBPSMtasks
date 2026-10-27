CREATE TABLE exown_samples (sample_id INT PRIMARY KEY, scientific_name TEXT, common_name TEXT, location TEXT);

INSERT INTO exown_samples VALUES (11, 'Homo sapiens', 'human', 'Manchester'), (12, 'Felis catus', 'domestic cat', 'York'), (13, 'Canis lupus familiaris', 'domestic dog', 'Dundee'), (14, 'Homo sapiens', 'human', 'Bristol');

CREATE TABLE exown_sequences (sequence_id INT PRIMARY KEY, seq TEXT, length INT, sample_id INT, FOREIGN KEY (sample_id) REFERENCES exown_samples(sample_id));

INSERT INTO exown_sequences VALUES (101, REPEAT('ATCGGA', 140), 840, 11), (102, REPEAT('GCTTAC', 90), 540, 11), (103, REPEAT('TTAAGC', 130), 780, 12), (104, REPEAT('CCGTAT', 100), 600, 12), (105, REPEAT('AGCTTC', 160), 960, 13), (106, REPEAT('TGACCA', 110), 660, 13), (107, REPEAT('CATGGT', 120), 720, 14), (108, REPEAT('GATCCA', 70), 420, 14);

CREATE TABLE exown_hits (blasthit_id INT PRIMARY KEY, length INT, accession TEXT, score INT, sequence_id INT, FOREIGN KEY (sequence_id) REFERENCES exown_sequences(sequence_id));

INSERT INTO exown_hits VALUES (201, 145, 'HIT_901', 175, 101), (202, 85, 'HIT_902', 120, 101), (203, 210, 'HIT_903', 75, 102), (204, 275, 'HIT_904', 230, 103), (205, 100, 'HIT_905', 155, 103), (206, 125, 'HIT_906', 100, 104), (207, 350, 'HIT_907', 290, 105), (208, 165, 'HIT_908', 135, 105), (209, 65, 'HIT_909', 55, 106), (210, 190, 'HIT_910', 205, 107), (211, 110, 'HIT_911', 95, 107), (212, 95, 'HIT_912', 145, 108);



SELECT exown_hits.accession FROM exown_samples, exown_sequences, exown_hits WHERE exown_samples.sample_id = exown_sequences.sample_id AND exown_sequences.sequence_id = exown_hits.sequence_id AND exown_samples.common_name = 'human';



SELECT sequence_id, length, seq  FROM exown_sequences WHERE length > 700;



SELECT scientific_name, common_name from exown_samples ; 



SELECT accession from exown_hits where length > 100 AND score >100 ;



SELECT exown_sequences.seq, exown_hits.score, exown_sequences.length FROM exown_sequences, exown_hits WHERE score > 100 AND length > 100
