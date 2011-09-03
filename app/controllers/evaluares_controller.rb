class EvaluaresController < InheritedResources::Base
  belongs_to :pacient
  def show
    @pacient = Pacient.find(params[:pacient_id])
    @evaluare = Evaluare.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.pdf do 
        send_data Raport.new.to_pdf(@evaluare, @pacient), :filename => "salut.pdf",
                                          :type => "application/pdf", :page_size => "A4", :layout => :portrait
      end
   end
  end
  def new
    @pacient = Pacient.find(params[:pacient_id])
    @evaluare = Evaluare.new
    @alte_analize = @evaluare.alte_analizes.build
  end

end
