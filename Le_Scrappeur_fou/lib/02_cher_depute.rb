require'nokogiri'
require'open-uri'

def get_deputes_infos(url)
    email_tab = []
    first_name_tab = []
    name_tab = []
    deputes_infos = {}

    page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr#{url}"))
      page.xpath('//*[@id="haut-contenu-page"]/article/div[3]/div/dl/dd[4]/ul/li[2]/a').each do |truc|
      email_tab << truc.text
      truc = truc.text.split(/[\s.@]/)
      first_name_tab << truc[0]
      name_tab << truc[1]
    end 

    deputes_infos  = {'first_name' => first_name_tab[0], 'name' => name_tab[0], 'email' => email_tab[0]}
      return deputes_infos
    end 

def cher_depute
  url_tab = []
  final_tab = []

  page_all = Nokogiri::HTML(open('http://www2.assemblee-nationale.fr/deputes/liste/alphabetique'))
    page_all.xpath('//*[@id="deputes-list"]//a').each do |node|
    url_tab << node['href']
  end

  url_tab.each do |item|
    puts final_tab << [get_deputes_infos(item)]
    ending_tab = Hash [final_tab]
  end 
end 

cher_depute