class ProductsController < ApplicationController
    def scrape
        if request.post?
            url = params[:url]
            if url?:

                document = ProductsHelper::scrape_product(url)
                return render json: {status: 'SUCCESS', message: 'The product has been scraped!.', data: document}

            else
                return render json: {status: 'FAIL', message: 'No URL was passed.', data: nil}
            end

            return render json: {url: params[:url]}
        end

        return render json: {status: 'FAIL', message: 'Only POST request allowed.', data: nil}
    end
end
