class Administrators::LogsController < AdministratorsController
  before_action :set_administrators_log, only: [:show, :edit, :update, :destroy]

  # GET /administrators/logs
  # GET /administrators/logs.json
  def index
    @administrators_log = AdministratorLog.all
  end

  # GET /administrators/logs/1
  # GET /administrators/logs/1.json
  def show
  end

  # GET /administrators/logs/new
  def new
    @administrators_log = AdministratorLog.new
  end

  # GET /administrators/logs/1/edit
  def edit
  end

  # POST /administrators/logs
  # POST /administrators/logs.json
  def create
    @administrators_log = AdministratorLog.new(administrators_log_params)

    respond_to do |format|
      if @administrators_log.save
        format.html { redirect_to @administrators_log, notice: 'Log was successfully created.' }
        format.json { render :show, status: :created, location: @administrators_log }
      else
        format.html { render :new }
        format.json { render json: @administrators_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrators/logs/1
  # PATCH/PUT /administrators/logs/1.json
  def update
    respond_to do |format|
      if @administrators_log.update(administrators_log_params)
        format.html { redirect_to @administrators_log, notice: 'Log was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrators_log }
      else
        format.html { render :edit }
        format.json { render json: @administrators_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrators/logs/1
  # DELETE /administrators/logs/1.json
  def destroy
    @administrators_log.destroy
    respond_to do |format|
      format.html { redirect_to administrators_log_url, notice: 'Log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrators_log
      @administrators_log = AdministratorLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrators_log_params
      params[:administrators_log]
    end
end
