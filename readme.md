# Basic Test environment for Code Jam Problems
This is a bash groover based tester. With the following changes

## No Commit until there is a --submitted or --submitt command
We will be commiting only when the problem is submitted.  This will make sure that there is no accidental submission of a solution in a live competition.  When practicing the problems can be published one at a time, as soon as they are completed.

bash CJGoover.sh my_prob --init
...
bash CJGroover.sh my_prob --case
...
bash CJGroover.sh my_prob --test
...
bash CJGroover.sh my_prob --submit

However in a live comptetition be sure to submit solutions to repo only after competion ends using submitted

bash CJGrover.sh prob_1 --init
...
bash CJGrover.sh prob_2 --init
...
bash CJGrover.sh prob_3 --init
...
bash CJGroover.sh --submitted

## Submit does not remove test cases
We will keep the cases for these problems in the event they are not completed in a competiion.  We can rework them and try them again without adding new case files.

The testing environment for google code jam is configured so commits to the repo only occur when there is a submitted or submit command.