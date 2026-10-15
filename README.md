# BPSM weekly practices

- Week 1 day 2 - Practised commands using generated questions.
- Week 2 day 1 - Practised five questions about example_people_data.tsv.
- Week 4 day 1 - COX1 protein analysis and Git practice.

Topics practised:

## Computing basics
- Hardware, software and source code
- Operating systems, Linux distributions and LTS
- Terminal, command line and shells
- Bash, zsh and SSH

## Directories and files
- Absolute and relative paths
- Home (~), current (.) and parent (..) directories
- Navigation using pwd, cd, ls and tree
- Distinguishing files from directories
- Creating files and directories with touch and mkdir
- Copying, moving and deleting with cp, mv, rm and rmdir
- Finding directories with find
- Distinguishing installed programs in ~/edirect from analysis output files
- Understanding that relative output paths use the current working directory
- Copying files between the server and Mac using scp

## Help and viewing files
- Getting help using man, help and --help
- Viewing files using cat, head and tail
- Counting lines, words and characters with wc

## Processing text and data
- Tab-separated files, headers, rows and fields
- Excluding blank lines and incomplete records
- Pipes (|), output redirection (>) and appending (>>)
- Pattern matching with grep and regular expressions
- Selecting columns with cut
- Sorting with sort, including numeric, reverse and multiple-key sorting
- Counting repeated values with uniq -c

## Bash scripting
- Shebangs and comments
- Displaying messages and variable values with echo
- Assigning and updating variables without spaces around =
- Retrieving variable values using $name, such as $cox1
- Distinguishing literal text from variable expansion
- Using single quotes for literal text and double quotes around variables
- Command substitution using $(...)
- Counters, conditions and comparisons
- Reading files line by line using IFS and while read
- for loops and if statements
- Adding EDirect to PATH and locating programs with command -v
- Continuing commands across lines with a backslash immediately before the newline

## awk
- BEGIN, FS and tab separators
- NF, $0 and numbered fields such as $1 and $7
- Conditions and comparisons
- AND (&&) and OR (||)
- Printing matching rows or selected fields
- Replacing text with sub
- Passing Bash variables into awk with -v

## People dataset exercises
- Counting valid people and grouping them by birth year
- Finding people called Jan or jan
- Finding the most common country of birth
- Counting people from that country born in 1976 or earlier
- Selecting people with .edu email addresses
- Sorting names in reverse order within each country
- Grouping people using Bash loops

## NCBI and sequence retrieval
- Searching the NCBI Protein database for nematode COX1 proteins
- Building search expressions using AND, OR, NOT and parentheses
- Restricting searches using [Organism] and [Gene Name]
- Understanding taxonomic expansion with [Organism:exp] and [Organism:noexp]
- Using esearch to find records and efetch to download FASTA sequences
- Understanding that storing a query in a variable does not perform a search or download
- Exploring alternatives to EDirect, including wget and website downloads

## FASTA files and protein alignment
- Recognising FASTA headers beginning with >
- Counting sequences with grep -c '^>' and comparing counts before and after alignment
- Using Clustal Omega (clustalo) for multiple sequence alignment
- Understanding alignment columns and gaps represented by -
- Selecting input, output and format with -i, -o and --outfmt=fasta
- Using --force to permit replacement of an existing alignment output file

## Conservation plots
- Using plotcon with aligned protein sequences
- Selecting the number of neighbouring alignment columns using -winsize
- Comparing detailed small-window plots with smoother large-window plots
- Understanding that conservation scores are not percentage identity
- Selecting PNG or SVG output using -graph
- Naming outputs with -goutfile and using distinct prefixes to preserve separate plots
- Matching filename labels to the actual window settings used

## Vim and documentation
- Opening and editing files
- Saving with :w and saving and quitting with :wq
- Understanding swap files, recovery and unsaved changes
- Writing commented commands as reusable analysis notes
- Formatting README files with Markdown headings and bullet points

## Git and GitHub
- Initialising repositories and using .gitignore
- Distinguishing working files, staged changes, local commits and remote copies
- Checking the current branch and file changes with git status
- Staging selected files with git add and all changes with git add -A
- Recording staged changes with git commit and uploading commits with git push
- Configuring remotes and setting upstream branches with git push -u origin main
- Understanding that switching branches changes which committed files appear
- Distinguishing branches such as w2l2_branch and w2l2-branching-practice
- Understanding that another branch's work must be incorporated into main before pushing main
- Inspecting files saved in a commit using git ls-tree
- Recovering a directory using git restore --source=17823f4 -- week4/w4l1/
- Staging and committing recovered files before pushing them
- Moving tracked files with git mv
- Organising weekly directories and maintaining a README in the repository root
- Understanding GitHub's compact folder display and how a README inside week4 makes it display separately
