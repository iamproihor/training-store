# RSpec.describe 'Pagination' do
#   # before do
#   #   create_list(:book, 3)
#   #   visit ('/')
#   # end
#
#   it 'shows pagination button' do
#
#     BooksController::BOOKS_PER_PAGE = 1
#     create_list(:book, 3)
#     visit ('/')
#     expect(page).to have_content('View More')
#   end
#
#   it 'not shows pagination button' do
#     BooksController::BOOKS_PER_PAGE = 4
#     create_list(:book, 3)
#     visit ('/')
#     expect(page).not_to have_content('View More')
#   end
# end
#
# RSpec.describe 'Book exsisting' do
#   # before do
#   #   create_list(:book, 3)
#   #   visit ('/')
#   # end
#
#   it 'book is present on the page' do
#
#     BooksController::BOOKS_PER_PAGE = 1
#     book = create(:book)
#     visit ('/')
#     expect(page).to have_content(book.title)
#     expect(page).to have_content(book.price)
#   end
#
#   # it 'no books are present on the page' do
#   #   BooksController::BOOKS_PER_PAGE = 4
#   #   visit ('/')
#   #   expect(page).not_to have_content('View More')
#   # end
# end

RSpec.describe 'Pagination' do
  context "categories list" do
    it 'when we do not have books' do
      visit ('/')
      within 'main ul.list-inline' do
        expect(page).to have_content('All')
        expect(page).to have_content('0')
          sleep 5
      end


    end

    it 'when we have books with different categories' do

    end

  end
end
