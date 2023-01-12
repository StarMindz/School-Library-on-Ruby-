require_relative './../book'

describe Book do
  before :each do
    @book = Book.new('Romeo and Juliet', 'William Shakespeare')
  end

  context 'New Object' do
    it 'Create a new Book object' do
      @book.should(be_an_instance_of(Book))
    end

    it 'throws an argument error when parameters are less than or greater than expected' do
      -> { Book.new 'Romeo and Juliet' }.should raise_error ArgumentError
    end

    it 'throws an argument error when no parameter is given' do
      -> { Book.new }.should raise_error ArgumentError
    end
  end



  context 'Object parameters' do
    it 'returns the book title' do
      @book.title.should eql 'Romeo and Juliet'
    end

    it 'returns the correct author' do
      @book.author.should eql 'William Shakespeare'
    end
  end
end
