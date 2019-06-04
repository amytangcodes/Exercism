defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    # list = String.split(dna, "", trim: true)

    # Map.puts(
    #   list,

    # )

    cond do
      dna == 'G' -> dna = 'C'
      dna == 'C' -> dna = 'G'
      dna == 'T' -> dna = 'A'
      dna == 'A' -> dna = 'U'
    end
  end
end
