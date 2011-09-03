class RetetaController < InheritedResources::Base
  belongs_to :pacient
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



end
