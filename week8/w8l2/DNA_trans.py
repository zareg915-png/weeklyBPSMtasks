#script that takes a DNA sequence and translates it into a protein sequence using the translation table 
gencode = {
'ATA':'I', 'ATC':'I', 'ATT':'I', 'ATG':'M',
'ACA':'T', 'ACC':'T', 'ACG':'T', 'ACT':'T',
'AAC':'N', 'AAT':'N', 'AAA':'K', 'AAG':'K',
'AGC':'S', 'AGT':'S', 'AGA':'R', 'AGG':'R',
'CTA':'L', 'CTC':'L', 'CTG':'L', 'CTT':'L',
'CCA':'P', 'CCC':'P', 'CCG':'P', 'CCT':'P',
'CAC':'H', 'CAT':'H', 'CAA':'Q', 'CAG':'Q',
'CGA':'R', 'CGC':'R', 'CGG':'R', 'CGT':'R',
'GTA':'V', 'GTC':'V', 'GTG':'V', 'GTT':'V',
'GCA':'A', 'GCC':'A', 'GCG':'A', 'GCT':'A',
'GAC':'D', 'GAT':'D', 'GAA':'E', 'GAG':'E',
'GGA':'G', 'GGC':'G', 'GGG':'G', 'GGT':'G',
'TCA':'S', 'TCC':'S', 'TCG':'S', 'TCT':'S',
'TTC':'F', 'TTT':'F', 'TTA':'L', 'TTG':'L',
'TAC':'Y', 'TAT':'Y', 'TAA':'_', 'TAG':'_',
'TGC':'C', 'TGT':'C', 'TGA':'_', 'TGG':'W'}
def pro(dna_seq, index, gencode=gencode):
    #how the input DNA will be adjusted 
    dna_seq = dna_seq.upper().strip()
    #store the amino acids in a list
    aa=[]
    #for each codon in the amino acid where the sequnce starts at 0 and last base can start 2 bases before the sequnce ends and moves in 3 bases 
    for codon in range(index,len(dna_seq)-2,3):
        #get the amino acid letter and put it in the list based on gencode table and 3 bases in the sequence and if can not find just return x
        aa.append(gencode.get(dna_seq[codon:codon+3],'x'))
    #join the list of amino acids into a string 
    aa_final = ''.join(aa)
    return aa_final

print(pro('ATGTTCGGT', 0))
print(pro('ATGTTCGGT', 1))
print(pro('ATGTTCGGT', 2))

#generate translation for all three reading frames
dna_seq = 'ATGTTCGGT'
for index in range(3):
    print(f"Reading frame {index}: {pro(dna_seq, index)}")


#translation in all three "reverse" frames
u_gencode = {}
for codon, amino_acid in gencode.items():
    new_codon = codon.replace('T', 'U')
    u_gencode[new_codon] = amino_acid
transcription = {'A':'U', 'T':'A', 'C':'G', 'G':'C'}
def transcribe(dna_seq):
    dna_seq = dna_seq.upper().strip()
    trans_strand = []
    for base in dna_seq:
       trans_strand.append(transcription[base])
    trans_seq = ''.join(trans_strand)
    return trans_seq [::-1]
for index in range(3):
    print(f"Reading frame {index}: {pro(transcribe(dna_seq), index, u_gencode)}")