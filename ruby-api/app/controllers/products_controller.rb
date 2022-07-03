class ProductsController < ApplicationController
    def scrape
        if request.post?
            url = params[:url]

            if !url.nil?
                page = helpers.scrape_product(url)
                product = helpers.extract_product(page)
                # product_obj = helpers.save_product(product)
                helpers.save_product(product)

                return render json: {status: 'SUCCESS', message: 'The product has been scraped!.'}

            end
            return render json: {status: 'FAIL', message: 'No URL was passed.', data: nil}

        end
        return render json: {status: 'FAIL', message: 'Only POST request allowed.', data: nil}

    end

    def list
        if request.get?
            category_name = params[:category_name]

            if !category_name.nil?
                product_obj = helpers.get_products(category_name)

                return render json: {status: 'SUCCESS', message: 'The product has been returned!.', data: product_obj}
            end
            return render json: {status: 'FAIL', message: 'No category name was passed.', data: nil}

        end

        return render json: {status: 'FAIL', message: 'Only GET request allowed.', data: nil}
    end
end
