class DocsController < ApplicationController
  # index
  def index
  end
  # read
  def show
  end
  # create 
  def new
    # sets the doc variable to be a new doc
    @doc = Doc.new
  end
  # create (no view)
  def create
    # creates a document with giver parameters
    @doc = Doc.new(doc_params)
    # if document saves
    if @doc.save
      # redirect to new doc show page
      redirect_to @doc
    else
      # if not render new (not redirect, because we dont want to refresh and lose data)
      render 'new'
    end
  end
  # update (no view)
  def edit
  end
  # destroy (no view)
  def destroy
  end

  # private methods
  private
    # apply to entire controller DRY coding
    def find_doc
    end

    def doc_params
      params.require(:doc).permit(:title, :content)
    end


end
