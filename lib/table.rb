module Table
  def create_table
    Terminal::Table.new do |t|
      t << [square[0], square[1], square[2]]
      t << :separator
      t.add_row [square[3], square[4], square[5]]
      t.add_separator
      t.add_row [square[6], square[7], square[8]]
      t.style = { border_top: false, border_bottom: false, border_left: false, border_right: false }
    end
  end
end
