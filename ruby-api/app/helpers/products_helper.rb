module ProductsHelper
    def scrape_product(url):
        document = Nokogiri::HTML(open(url))
        return document
    end
end
