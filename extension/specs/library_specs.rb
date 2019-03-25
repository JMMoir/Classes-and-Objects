require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class Library < MiniTest::Test

  def test_get_book
    books = Books.new([{
        title: "lord_of_the_rings",
        rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
    }
  }])
  assert_equal([{
      title: "lord_of_the_rings",
      rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
    }
  }], books.get_book)
  end

  def test_get_book_by_title
    books = Books.new([{
        title: "lord_of_the_rings",
        rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
    }
  }])
  assert_equal([{
      title: "lord_of_the_rings",
      rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
    }
  }], books.get_book_by_title("lord_of_the_rings"))
  end

  def test_details_by_title
    books = Books.new([{
        title: "lord_of_the_rings",
        rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
    }
  }])

  assert_equal({
      student_name: "Jeff",
      date: "01/12/16"
    }, books.details_by_title("lord_of_the_rings"))
  end

  def test_new_book_by_title
    books = Books.new([{
        title: "lord_of_the_rings",
        rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
    }
  }])

  assert_equal([{
      title: "moby_dick",
      rental_details: {
      student_name: "",
      date: ""
    }
  }], books.new_book_by_title("moby_dick"))
  end

  def test_update_details
    books = Books.new([{
        title: "lord_of_the_rings",
        rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
    }
  }])
  assert_equal({
      title: "lord_of_the_rings",
      rental_details: {
      student_name: "John",
      date: "05/04/19"
    }
  },books.update_details("lord_of_the_rings","John","05/04/19"))
  end


end
