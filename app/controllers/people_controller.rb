class PeopleController < ApplicationController
 before_action :set_person, only: %i[ show edit update destroy ]

 # USING Variant
 # before_action :set_variant     then go down to private

# include ActionController::live   # This is for Live Stream
#   def stream
#     response.headers["Content-Type"] = "text/event-stream"
#     100.times {
#       response.stream.write "hello from Rails demo app! \n"
#       sleep 1
#     }
#     ensure
#       response.stream.close
#   end

  def admin_people_screen

  end
  # GET /people or /people.json
  def index
    @people = Person.all

    # # Using variant
    # respond_to do |format|
    #   format.html do |html|
    #     html.phone {
    #       @phone_message = "hi you are viewing the mobile version of the site"
    #     }
    #   end
    # end
  end

  #THIS is an example how to sent file to user to download the file
  # def zip_download
  #   file_path = File.join(Rails.root, "lib", "assets", "test_file.zip")
  #   respond_to do |format
  #      format.zip do
  #        sent_file file_path, disposition: :attachment
  #      end
  #   end
  # end

  # GET /people/2 or /people/2.json
  def show
    @person = Person.find([params[:id]])

    respond_to do |format|
      format.html     # rails knows by default that i want to render the HTML template for
                      #the show action So the test will check locallhost 3000 for person2
      format.json {render :json => @person.to_json}
      format.xml {render :xml => @person.to_xml}
    end
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/2/edit
  def edit
    @person = Person.find([params[:id]])
  end

  # POST /people or /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to person_url(@person), notice: "Person was successfully created." }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/2 or /people/2.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to person_url(@person), notice: "Person was successfully updated." }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def test

  end

  # DELETE /people/2 or /people/2.json
  def destroy
    @person.destroy!

    respond_to do |format|
      format.html { redirect_to people_url, notice: "Person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # #This is for Variant
    # def set_variant
    #   if browser.mobile?
    #     request.variant = :phone
    #   end
    # end


    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:name, :position, :phone_number, :married)
    end
end
