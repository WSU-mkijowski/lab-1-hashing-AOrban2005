[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name:

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data? 

42 unique users.

* How many salts did you create? 

42 salts.

* How many possible combinations will I need to try to figure out the secret ID of all students (assume I know all potential secret IDs and have your `salted-data.csv`) 
  
1048576 possible combinations.

* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try? 

1365245952 possible combinations.

* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why? 
  
I would probably use nonces instead of salts to store this dataset, as nonces are much more secure.

```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 1 here
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
00004d48581c3239ed48a23b17fbab538d6d9ebd72ec16059156708759f323e7 - 5996these
```

* How many words were in your dictionary? 

14 words.

* How many nonces did your code iterate over? 

10000000000 nonces.

* What was the maximum number of hashes your code *could* compute given the above? 

140000000000 hashes.

* What did you think about Task 2? 

Challenging, but interesting.

* Is there a better way than brute force to attempt to get higher valued coins? 

No.

* Why or why not? 

It's not possible to know what a hash will be before it's been hashed, and by extension, not possible to know how many leading zeroes it will have.


```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 2 here
```

