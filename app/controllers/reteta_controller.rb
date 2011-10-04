class RetetaController < InheritedResources::Base
  respond_to :html, :js
  belongs_to :pacient
  #o reteta trebuie sa aibe mai multe medicamente
  def index
    @pacient = Pacient.find(params[:pacient_id])
    @retetum = pacient.reteta.all
  end
  def show
    @pacient = Pacient.find(params[:pacient_id])
    @retetum = Retetum.find(params[:id])
    respond_to do |format|
      format.html
      #format.pdf do
        #send_data Raport.new.reteta(@retetum, @pacient), :filename => 'reteta.pdf',
                                              #:type => "application/pdf", :page_size => "A4"
      #end
    end
  end
  def create
    @pacient = Pacient.find(params[:pacient_id])
    @retetum = @pacient.reteta.new(params[:retetum])
    @retetum.save
    #nu ajunge aici
    respond_with @pacient #@retetum, :location => pacient_retetum_url
  end
  def new
    respond_to do |format|
      @pacient = Pacient.find(params[:pacient_id])
      @retetum = @pacient.reteta.build
      format.html
      format.pdf do
        send_data Raport.new.reteta(@retetum, @pacient), :filename => 'reteta.pdf',
                                              :type => "application/pdf", :page_size => "A4" 
      end
    end
  end
  def medicamente
    @pacient = Pacient.find(params[:pacient_id])
    @retetum = Retetum.find(params[:id])
    medicamente = @retetum.medicamente_id
  end
  def update_pastile
    #update de pastile in functie de ce clasa selecteaza
    clasa = Medicamente.find(params[:medicamente_id])
    medicamente = Medicamente.where(:clasa => clasa)
    render :update do |page|
      page.replace_html 'pastile', :partial => 'pastile', :object => medicamente
    end
  end



end
