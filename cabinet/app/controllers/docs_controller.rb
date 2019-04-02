class DocsController < ApplicationController
  # runs ahead of all actions
  before_action :find_doc, only: [:show, "edit, :update, :destroy"]

  # index
  def index
    # find all documents in descending order
    @docs = Doc.all.order("created_at DESC")
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
    # finds document by ID
    def find_doc
      # get the specific document by id
      @doc = Doc.find(params[:id]) 
    end
    # sends the title and content of document
    def doc_params
      params.require(:doc).permit(:title, :content)
    end


end
