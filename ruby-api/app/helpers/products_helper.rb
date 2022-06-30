module ProductsHelper
    def scrape_product(url)
        begin
            # document = Nokogiri::HTML.parse(url)
            require 'mechanize'
            agent = Mechanize.new
            page = agent.get(url)

            return page

        rescue Exception => error
            logger.info("Exception in scrape_product in products_helper.rb: ")
            logger.info(error)
            
        end
    end

    # take mechanizer instance, convert to document, and extract the product information from HTML
    # and return them
    def extract_product(page)
        document = page.parser

        begin
            url = page.uri.to_s
            title = document.css(".B_NuCI").text
            description = document.css("._1AN87F").text
            price = document.css("._16Jk6d").text

            # can be improved by crawling several images
            #! TODO: use selenium to trigger hover effect
            # also can be improved by saving the images on s3bucket and store the s3bucket url into the database instead
            image_url = document.css("._396QI4").attr("src")

            # can be improved by gathering more information regarding the seller including
            # joined date and ratings per category
            seller_name = document.css("._1RLviY > span > span").text

            
            product_categories = Array.new

            categories = document.css("._3GIHBu")
            categories.each do |category|
                product_category = Hash.new
                product_category["name"] = category.css("._2whKao").text
                product_categories.push(product_category)
            end
                

            attributes = Array.new

            properties = document.css("._13swYk .row")
            properties.each do |property|
                attribute = Hash.new
                attribute["name"] = property.css("._2H87wv").text
                attribute["value"] = property.css("._2vZqPX").text
                attributes.push(attribute)
            end

            return {url: url, title: title, description: description, price: price, image_url: image_url, seller_name: seller_name, categories: product_categories, attributes: attributes}

        rescue Exception => error
            logger.info("Exception in extract_product in products_helper.rb: ")
            logger.info(error)
            
        end
    end
    
    def save_product(product)
        # product_obj = Product.where(url: product[:url])
        
        # if !product_obj.exists?
        if true
            begin
                product_seller_obj = ProductSeller.new(name: product[:seller_name])
                product_seller_obj.save!

                product_obj = Product.new(url: product[:url], title: product[:title], description: product[:description], price: product[:price])
                product_obj.product_seller = product_seller_obj
                product_obj.save!


                product_image_obj = ProductImage.new(url: product[:image_url])
                product_image_obj.products_id = product_obj.id
                product_image_obj.save!


                product[:categories].each do |category|
                    product_category_obj = ProductCategory.new(name: category["name"])
                    if defined? @parent_product_category_obj
                        product_category_obj.product_categories_id = @parent_product_category_obj.id
                    end
                    product_category_obj.save!

                    product_categorization_obj = ProductCategorization.new()
                    product_categorization_obj.products = product_obj
                    product_categorization_obj.product_categories = product_category_obj
                    product_categorization_obj.save!

                    # save the parent category so it can be passed to the child later
                    # which indicates hierarchy in categories
                    @parent_product_category_obj = product_category_obj

                end
                
                product[:attributes].each do |attribute|
                    product_attribute_obj = ProductAttribute.new(name: attribute["name"], value: attribute["value"])
                    product_attribute_obj.save!

                    product_property_obj = ProductProperty.new()
                    product_property_obj.products = product_obj
                    product_property_obj.product_attributes = product_attribute_obj
                    product_property_obj.save!
                end

            rescue Exception => error
                logger.info("Exception in save_product in products_helper.rb: ")
                logger.info(error)

            end

        end

        return product_obj.attributes.merge({seller: product_obj.product_seller.attributes, categories: product_obj.product_categories, attributes: product_obj.product_attributes})
    end
end
