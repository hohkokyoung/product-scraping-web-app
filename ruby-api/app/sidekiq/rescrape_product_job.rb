class RescrapeProductJob
  include Sidekiq::Job
  include ProductsHelper

  def perform(*args)
    products = Product.all
    products.each do |product|
      
      begin
        page = scrape_product(product.url)
        product = extract_product(page)
        save_product(product)
      rescue Exception => error
        logger.info(error)
      end

    end

  end

end
