module HomesHelper
  def get_authors
    [
      [
        ALL,
        'all'
      ],
    ] +
    Author.all.select([:full_name, :id]).collect {|author| [author.full_name, author.id]}
  end
end
