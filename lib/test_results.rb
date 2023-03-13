class Report
  def initialize(results)
    @results = results.split(/,\s*/)
  end

  def generate
    counts = Hash.new(0)
    uncounted = 0

    @results.each do |result|
      case result.downcase
      when 'green'
        counts[:green] += 1
      when 'amber'
        counts[:amber] += 1
      when 'red'
        counts[:red] += 1
      else
        uncounted += 1
      end
    end

    output = []
    output << "Green: #{counts[:green]}" if counts[:green] > 0
    output << "Amber: #{counts[:amber]}" if counts[:amber] > 0
    output << "Red: #{counts[:red]}" if counts[:red] > 0
    output << "Uncounted: #{uncounted}" if uncounted > 0

    output.join("\n")
  end
end







