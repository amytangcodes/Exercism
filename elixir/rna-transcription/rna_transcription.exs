defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    # set dna from charlist (single quotes) to string (double quotes)
    list = String.graphemes(to_string(dna))

    # Map through dna and set corresponding dna to rna chars
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
    # set array back into a string
    |> to_string
    # set string back to charlist
    |> to_charlist
  end
end
