def dna_transcription(dna_sequence)
  # TODO: return the RNA complement of the incoming DNA sequence
  dna_to_rna = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
  dna_sequence.map! { |dna| dna_to_rna[dna.upcase] }.delete(nil)
  dna_sequence
end
