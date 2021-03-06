module FeaturesHelper

  def first_value_of(csv_path)
    first_column_of(csv_path).first
  end

  def first_column_of(csv_path)
    lines = File.read(csv_path).split
    lines.map { |line| line.split(/[\s,|]/).first }
  end

  def first_table_cell
    first("table td")
  end

  def click_header(text)
    find("th", text: text).click
  end

end
