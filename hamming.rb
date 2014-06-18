require_relative "testing_library"

def hamming(strand_1, strand_2)
 if strand_1.length == strand_2.length && strand_1 != strand_2
    hamm = []
    strand_1_arry = strand_1.split("")
    strand_2_arry = strand_2.split("")
    hamm = strand_1_arry - strand_2_arry
      if (strand_1_arry - strand_2_arry) == strand_1_arry
        strand_1.length
      else
        hamm.length
      end
 elsif (strand_1.length - strand_2.length) >= 0
   pop_diff = strand_1.length - strand_2.length
   strand_2_arry = strand_2.split("")
   strand_1_arry = strand_1.split("")
   strand_1_arry.pop(pop_diff)
   hamm = strand_1_arry - strand_2_arry
   hamm.length
 elsif (strand_2.length - strand_1.length) >= 0
   pop_diff = strand_2.length - strand_1.length
   strand_2_arry = strand_2.split("")
   strand_1_arry = strand_1.split("")
   strand_2_arry.pop(pop_diff)
   hamm = strand_2_arry - strand_1_arry
   hamm.length
 end
end

check("Hamming distance between identical strands",
      hamming("A", "A") == 0)

check("Hamming distance for single nucleotide strand",
      hamming("A", "G") == 1)

check("Hamming distance between small strands",
      hamming("AG", "CT") == 2)

check("Hamming distance between two other small strands",
      hamming("AT", "CT") == 1)

check("Hamming distance in longer strands",
      hamming("GGACG", "GGTCG") == 1)

check("Ignoring extra length in the first strand when it's longer",
      hamming("AAAG", "AAA") == 0)

check("Ignoring extra length in the second strand when it's longer",
      hamming("AAA", "AAAG") == 0)

# Figure out the number of differences the two strings have
# loop through each string character by character to determine actual number of differences
# Print a number representing the number of differences between the two strands
