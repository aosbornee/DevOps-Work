"""
2 - DNA string parsing
```
The Problem
A string is simply an ordered collection of symbols selected from some alphabet and formed into a word;
the length of a string is the number of symbols that it contains.
An example of a length 21 DNA string (whose alphabet contains the symbols 'A', 'C', 'G', and 'T') is "ATGCTTCAGAAAGGTCTTACG."
Given: A DNA string s of length at most 1000 nt.
Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s.
Sample Dataset:
AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC

Sample Output:

20 12 17 21

NOTE -> Must be in class and method format
"""


class DNA_parsing:

    def parsing(self):
        sequence = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
        adenine = 0
        cytosine = 0
        guanine = 0
        thymine = 0

        for n in sequence:
            if n == "A":
                adenine += 1
            elif n == "C":
                cytosine += 1
            elif n == "G":
                guanine += 1
            elif n == "T":
                thymine += 1

        print("Adenine: {}".format(adenine))
        print("Cytosine: {}".format(cytosine))
        print("Guanine: {}".format(guanine))
        print("Thymine: {}".format(thymine))


parsing1 = DNA_parsing()


parsing1.parsing()

