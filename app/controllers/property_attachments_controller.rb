class PropertyAttachmentsController < ApplicationController
  before_action :set_property_attachment, only: %i[ show edit update destroy ]

  # GET /property_attachments or /property_attachments.json
  def index
    @property_attachments = PropertyAttachment.all
  end

  # GET /property_attachments/1 or /property_attachments/1.json
  def show
  end

  # GET /property_attachments/new
  def new
    @property_attachment = PropertyAttachment.new
  end

  # GET /property_attachments/1/edit
  def edit
  end

  # POST /property_attachments or /property_attachments.json
  def create
    byebug
    @property_attachment = PropertyAttachment.new(property_attachment_params)

    respond_to do |format|
      if @property_attachment.save
        format.html { redirect_to property_attachment_url(@property_attachment), notice: "Property attachment was successfully created." }
        format.json { render :show, status: :created, location: @property_attachment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_attachments/1 or /property_attachments/1.json
  def update
    respond_to do |format|
      if @property_attachment.update(property_attachment_params)
        format.html { redirect_to property_attachment_url(@property_attachment), notice: "Property attachment was successfully updated." }
        format.json { render :show, status: :ok, location: @property_attachment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_attachments/1 or /property_attachments/1.json
  def destroy
    @property_attachment.destroy

    respond_to do |format|
      format.html { redirect_to property_attachments_url, notice: "Property attachment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_attachment
      @property_attachment = PropertyAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_attachment_params
      params.require(:property_attachment).permit(:property_id, :photo)
    end
end
