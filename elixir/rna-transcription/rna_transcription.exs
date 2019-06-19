defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    # Map through dna
    dna
    |> Enum.map(
      &%{
        ?G => ?C,
        ?C => ?G,
        ?T => ?A,
        ?A => ?U
      }[&1]
    )
  end
end
