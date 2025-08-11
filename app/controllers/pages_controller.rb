class PagesController < ApplicationController
  def home; end
  def about; end

  def contact
    # not_available_in_view = "some string"
    # @available_in_view = "other string"
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    query = params[:member]

    if query.present?
      @members = @members.select { |m| m.start_with?(query) }
    end
  end
end
