-- Jake Freed and Emilyo Garcia
-- CS 325 - Fall 2022
-- December 7, 2022

spool 325report1-results.txt

--Formatting
ttitle "User Accounts Following Each Other"
set pagesize 60
set feedback off

Col account_following heading "User|Following" format a30
Col account_email heading "User|Followed" format a30

break on account_following skip 1
compute count of account_email on account_following 

select account_following, account_email
from account_follows;

clear breaks
clear columns
ttitle off
set pagesize 14
set feedback on

spool off