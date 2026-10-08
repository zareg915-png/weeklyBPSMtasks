cd ~/BP_Fridays

# 1 How would you create a directory
mkdir practice_questions

# 2 How would you move into that directory?
cd practice_questions

# 3 How would you display your current directory’s complete path?
pwd

# 4 How would you create an empty file
touch notes.txt

# 5 How would you list the files in your current directory?
ls .

# 6 How would you list those files with their permissions and sizes?
ls -l

# 7 How would you display Hello Ghazal on the screen?
echo "Hello Ghazal"

# 8 pasting into vim (just paste the data)
Mina
Sam
Mina
Alex

# 9 How would you display the entire contents of a file?
cat names.txt

# 10 How would you display only its first two lines?
cat names.txt | head -n +2

# 11 How would you display only its last two lines?
tail -n 2 names.txt

# 12 How would you count the lines?
wc -l names.txt

# 13 How would you display its names in alphabetical order?
sort names.txt

# 14 How would you sort the names, then count how many times each appears?
sort names.txt | uniq -c

# 15 How would you display only the lines containing Mina?
grep "Mina" names.txt

# 16 How would you copy a file to a new file?
cp names.txt names_backup.txt

# 17 How would you rename a file? 
mv names_backup.txt names_copy.txt

# 18: remove write permission, then restore it
chmod u-w names_copy.txt
chmod u+w names_copy.txt

# 19 How would you delete a file?
rm -I names_copy.txt

# 20 How would you create an empty directory then remove it? (rmdir for empty directories, rm -i for everything)
mkdir empty_test
rmdir empty_test

# 21 How would you search beneath your current directory for a file?
find . -type f -name "names.txt"

# 22 How would you open the manual page for a command?
man ls

# 23 How would you display Bash’s help? (--help for external commands)
help cd

# 24 How would you ask an external command to display its own help message?
ls --help

# 25 How would you display your last five command-history entries?
history 5
