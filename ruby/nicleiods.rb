class Nucleotide
  VALID_NUCLEOTIDES = ['A', 'T', 'C', 'G'].freeze

  def self.from_dna(dna)
    raise ArgumentError, "Invalid DNA sequence" unless valid_dna?(dna)

    new(dna)
  end

  def initialize(dna)
    @dna = dna
  end

  def count(nucleotide)
    raise ArgumentError, "Invalid nucleotide" unless VALID_NUCLEOTIDES.include?(nucleotide)

    @dna.count(nucleotide)
  end

  def histogram
    VALID_NUCLEOTIDES.each_with_object({}) do |nucleotide, counts|
      counts[nucleotide] = @dna.count(nucleotide)
    end
  end

  private

  def self.valid_dna?(dna)
    dna.chars.all? { |char| VALID_NUCLEOTIDES.include?(char) }
  end
end

s = 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
dna = Nucleotide.from_dna(s)
p dna