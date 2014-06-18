require_relative "testing_library"

def hamming(strand_1, strand_2)
  hamm = 0
  if strand_1 == strand_2
    hamm = 0
  elsif strand_1.length != strand_2.length
    if strand_1.length > strand_2.length
      rm_st1 = strand_1.delete(strand_2)
      strand_1.delete!(rm_st1)
    elsif strand_2.length > strand_1.length
      rm_st2 = strand_2.delete(strand_1)
      strand_2.delete!(rm_st2)
    end
  end
  if strand_1.length == strand_2.length
    array_1 = strand_1.split("")
    array_2 = strand_2.split("")
    hamm = array_1 - array_2
    hamm.length
  end
end

# get strings equal in length first then deal with logic

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
