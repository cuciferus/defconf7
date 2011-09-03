class Raport < Prawn::Document
  def to_pdf(analize, pacient)
    #responasabil de generarea pdf
    image "#{Rails.root}/app/assets/images/paulica.png", :position => :center,
      :valign => :top, :width=> 490
    move_down 20
    text "Bilet de Analize/Scrisoare Medicala", :align => :center, :size => 24
    move_down 20
    text "<b> Nume:</b> #{pacient.nume.capitalize} <b> Prenume: </b> #{pacient.prenume.capitalize}", :inline_format => true
    text "<b> Data Evaluarii:</b> #{analize.data}", :inline_format => true
    text "<b> Diagnostice:</b>", :inline_format => true
    text "<b> Analize: </b>", :inline_format => true
    valori_tabel = [["Analiza", "Valoare"]]
    valori_tabel += tabel(analize)
    tabel_analize=make_table(valori_tabel, :header => true)
    tabel_analize.draw
    move_down 10

    text "<b> Recomandari: </b>", :inline_format => true
    render
  end

  def tabel(analize)
    #face tabelu cu analize
    coloane=analize.class.column_names[2..-4]
    valori =[]
    coloane.each do |categorie|
      valori<< analize.attributes[categorie].to_s
    end
    coloane.zip(valori)
  end
  def reteta(retetum, pacient)
    #aici tiparesc reteta
    #headeru cu spitalu
    text "IDNMB N. Paulescu"
    text "4204151"
    text "Ion Movila 5-7"
    text "Sect 2"
    text "MB / U3"
    #date pacient
    text "MB/#{pacient.focad}", :format_inline => :true
    text "#{pacient.nume}", :format_inline => :true
    text "#{pacient.prenume}", :format_inline => :true
    text "#{pacient.adresa}", :format_inline => :true
    text "#{pacient.cnp}", :format_inline => :true
    #date medicamente
    render
  end

end
