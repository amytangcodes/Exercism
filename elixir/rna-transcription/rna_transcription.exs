defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    list = String.graphemes(to_string(dna))

    rna_strand =
      Enum.map(list, fn dna ->
        case dna do
          "G" -> "C"
          "C" -> "G"
          "T" -> "A"
          "A" -> "U"
          _ -> "Error"
        end
      end)

    rna_strand
    |> to_string
    |> to_charlist
  end
end
