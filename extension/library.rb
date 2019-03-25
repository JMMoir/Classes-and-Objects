class Books

  def initialize(library)
    @library = library
  end

  def get_book
    return @library
  end

  def get_book_by_title(name)
    return @library if @library[0][:title] == name
  end

  def details_by_title(name)
    return @library[0][:rental_details] if @library[0][:title] == name
  end

  def new_book_by_title(new_book)
    @library << [{
        title: new_book,
        rental_details: {
        student_name: "",
        date: ""
      }
    }]
    return @library[1]
  end

  def update_details(name, student, date)
    if name == @library[0][:title]
      @library[0][:rental_details][:student_name] = student
      @library[0][:rental_details][:date] = date

      return @library[0]
    end
  end



end
