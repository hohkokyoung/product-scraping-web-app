class ProductsController < ApplicationController
    def scrape
        if request.post?
            url = params[:url]

            if !url.nil?
                page = helpers.scrape_product(url)
                product = helpers.extract_product(page)
                product_obj = helpers.save_product(product)

                return render json: {status: 'SUCCESS', message: 'The product has been scraped!.', data: product_obj}

            end
            return render json: {status: 'FAIL', message: 'No URL was passed.', data: nil}

        end
        return render json: {status: 'FAIL', message: 'Only POST request allowed.', data: nil}

    end
end
