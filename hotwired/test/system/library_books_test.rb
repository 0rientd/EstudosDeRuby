require "application_system_test_case"

class LibraryBooksTest < ApplicationSystemTestCase
  setup do
    @library_book = library_books(:one)
  end

  test "visiting the index" do
    visit library_books_url
    assert_selector "h1", text: "Library books"
  end

  test "should create library book" do
    visit library_books_url
    click_on "New library book"

    fill_in "Description", with: @library_book.description
    fill_in "Internal info", with: @library_book.internal_info
    fill_in "Status", with: @library_book.status
    fill_in "Status dat", with: @library_book.status_dat
    fill_in "Title", with: @library_book.title
    click_on "Create Library book"

    assert_text "Library book was successfully created"
    click_on "Back"
  end

  test "should update Library book" do
    visit library_book_url(@library_book)
    click_on "Edit this library book", match: :first

    fill_in "Description", with: @library_book.description
    fill_in "Internal info", with: @library_book.internal_info
    fill_in "Status", with: @library_book.status
    fill_in "Status dat", with: @library_book.status_dat
    fill_in "Title", with: @library_book.title
    click_on "Update Library book"

    assert_text "Library book was successfully updated"
    click_on "Back"
  end

  test "should destroy Library book" do
    visit library_book_url(@library_book)
    click_on "Destroy this library book", match: :first

    assert_text "Library book was successfully destroyed"
  end
end
