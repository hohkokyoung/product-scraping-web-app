import React, { useEffect, useState } from "react";
import Product from "../../components/products/index.js";
import './index.css';

export default function Products() {
    const [products, setProducts] = useState(
        {
            "parent_categories_hierarchy": [{
                "id": 1,
                "name": "Home",
                "created_at": "2022-07-03T07:18:43.366Z",
                "updated_at": "2022-07-03T07:18:43.366Z",
                "product_categories_id": null
            }],
            "sub_categories": [{
                "id": 2,
                "name": "Sunglasses",
                "created_at": "2022-07-03T07:19:00.257Z",
                "updated_at": "2022-07-03T07:19:00.257Z",
                "product_categories_id": 1
            }],
            "products": [{
                "id": 128,
                "url": "https://www.flipkart.com/srpm-wayfarer-sunglasses/p/itmaf19ae5820c06?pid=SGLFHQPHY2GZ4HFP\u0026lid=LSTSGLFHQPHY2GZ4HFP0AZWKY\u0026marketplace=FLIPKART\u0026sattr%5B%5D=size\u0026st=size",
                "title": "UV Protection Wayfarer Sunglasses (50)  (For Men \u0026 Women, Clear, Black, Brown)",
                "description": "About brand: this brand is known for its amazing shades of lenses and creative finishes in its optical frames. The fashion accessories speak about fine finishing and brilliant shades that give your sunglasses or anything for that matter, the ultimate look. These sunglasses not only make you look fashionable but also give 100% UV protection to your eyes. Its optical frames made of fibre are durable and light weight. At Elligator we are passionate and reputed to bring you the trendiest sunglass.",
                "price": "₹211",
                "created_at": "2022-07-03T07:17:58.738Z",
                "updated_at": "2022-07-03T07:17:58.738Z",
                "product_sellers_id": 231,
                "seller": {
                    "id": 231,
                    "name": "WinsomeWorld.",
                    "created_at": "2022-07-03T07:17:58.732Z",
                    "updated_at": "2022-07-03T07:17:58.732Z"
                },
                "images": [{
                    "id": 100,
                    "url": "https://rukminim1.flixcart.com/image/1000/1000/k2gh30w0/sunglass/k/p/y/medium-waf2019-03-elligator-original-imafhry2uhysjbhd.jpeg?q=70",
                    "created_at": "2022-07-03T07:17:58.746Z",
                    "updated_at": "2022-07-03T07:17:58.746Z",
                    "products_id": 128
                }, {
                    "id": 101,
                    "url": "https://rukminim1.flixcart.com/image/1000/1000/k2gh30w0/sunglass/k/p/y/medium-waf2019-03-elligator-original-imafhry2uhysjbhd.jpeg?q=70",
                    "created_at": "2022-07-03T07:17:58.752Z",
                    "updated_at": "2022-07-03T07:17:58.752Z",
                    "products_id": 128
                }, {
                    "id": 102,
                    "url": "https://rukminim1.flixcart.com/image/1000/1000/k2gh30w0/sunglass/k/p/y/medium-waf2019-03-elligator-original-imafhry2zh2fguvf.jpeg?q=70",
                    "created_at": "2022-07-03T07:17:58.759Z",
                    "updated_at": "2022-07-03T07:17:58.759Z",
                    "products_id": 128
                }, {
                    "id": 103,
                    "url": "https://rukminim1.flixcart.com/image/1000/1000/k2gh30w0/sunglass/k/p/y/medium-waf2019-03-elligator-original-imafhry2kk9zxyzk.jpeg?q=70",
                    "created_at": "2022-07-03T07:17:58.766Z",
                    "updated_at": "2022-07-03T07:17:58.766Z",
                    "products_id": 128
                }, {
                    "id": 104,
                    "url": "https://rukminim1.flixcart.com/image/1000/1000/k2gh30w0/sunglass/k/p/y/medium-waf2019-03-elligator-original-imafhry2n6ppd93w.jpeg?q=70",
                    "created_at": "2022-07-03T07:17:58.773Z",
                    "updated_at": "2022-07-03T07:17:58.773Z",
                    "products_id": 128
                }, {
                    "id": 105,
                    "url": "https://rukminim1.flixcart.com/image/1000/1000/k69ncsw0/sunglass/x/x/g/free-size-tiktok-srpm-original-imafk89rkpehgjfm.jpeg?q=70",
                    "created_at": "2022-07-03T07:17:58.778Z",
                    "updated_at": "2022-07-03T07:17:58.778Z",
                    "products_id": 128
                }],
                "attributes": [{
                    "id": 1947,
                    "created_at": "2022-07-03T07:17:58.782Z",
                    "updated_at": "2022-07-03T07:17:58.782Z",
                    "name": "Size",
                    "value": "This product is sold as Medium by the Brand"
                }, {
                    "id": 1948,
                    "created_at": "2022-07-03T07:17:58.792Z",
                    "updated_at": "2022-07-03T07:17:58.792Z",
                    "name": "Ideal For",
                    "value": "Men \u0026 Women"
                }, {
                    "id": 1949,
                    "created_at": "2022-07-03T07:17:58.800Z",
                    "updated_at": "2022-07-03T07:17:58.800Z",
                    "name": "Purpose",
                    "value": "Driving, Running, Style, Biking, Eye Protection"
                }, {
                    "id": 1950,
                    "created_at": "2022-07-03T07:17:58.809Z",
                    "updated_at": "2022-07-03T07:17:58.809Z",
                    "name": "Lens Color and Material",
                    "value": "Clear, Black, Brown, CR 39"
                }, {
                    "id": 1951,
                    "created_at": "2022-07-03T07:17:58.821Z",
                    "updated_at": "2022-07-03T07:17:58.821Z",
                    "name": "Features",
                    "value": "UV Protection"
                }, {
                    "id": 1952,
                    "created_at": "2022-07-03T07:17:58.830Z",
                    "updated_at": "2022-07-03T07:17:58.830Z",
                    "name": "Frame Color",
                    "value": "Black, Brown"
                }, {
                    "id": 1953,
                    "created_at": "2022-07-03T07:17:58.839Z",
                    "updated_at": "2022-07-03T07:17:58.839Z",
                    "name": "Type",
                    "value": "Wayfarer"
                }, {
                    "id": 1954,
                    "created_at": "2022-07-03T07:17:58.848Z",
                    "updated_at": "2022-07-03T07:17:58.848Z",
                    "name": "Style Code",
                    "value": "SUN_2019-S1"
                }, {
                    "id": 1955,
                    "created_at": "2022-07-03T07:17:58.857Z",
                    "updated_at": "2022-07-03T07:17:58.857Z",
                    "name": "Frame",
                    "value": "Full-frame"
                }, {
                    "id": 1956,
                    "created_at": "2022-07-03T07:17:58.866Z",
                    "updated_at": "2022-07-03T07:17:58.866Z",
                    "name": "Face Type",
                    "value": "Heart, Long, Square, Round, Diamond, Oval"
                }, {
                    "id": 1957,
                    "created_at": "2022-07-03T07:17:58.875Z",
                    "updated_at": "2022-07-03T07:17:58.875Z",
                    "name": "Frame Material",
                    "value": "Plastic"
                }, {
                    "id": 1958,
                    "created_at": "2022-07-03T07:17:58.883Z",
                    "updated_at": "2022-07-03T07:17:58.883Z",
                    "name": "Brand Color",
                    "value": "Black, Brown, Clear"
                }, {
                    "id": 1959,
                    "created_at": "2022-07-03T07:17:58.891Z",
                    "updated_at": "2022-07-03T07:17:58.891Z",
                    "name": "Frame Color for Refiner",
                    "value": "Black, Brown"
                }, {
                    "id": 1960,
                    "created_at": "2022-07-03T07:17:58.901Z",
                    "updated_at": "2022-07-03T07:17:58.901Z",
                    "name": "Pack of",
                    "value": "3"
                }, {
                    "id": 1961,
                    "created_at": "2022-07-03T07:17:58.911Z",
                    "updated_at": "2022-07-03T07:17:58.911Z",
                    "name": "Secondary Type",
                    "value": "Wayfarer"
                }, {
                    "id": 1962,
                    "created_at": "2022-07-03T07:17:58.919Z",
                    "updated_at": "2022-07-03T07:17:58.919Z",
                    "name": "HD Vision",
                    "value": "No"
                }, {
                    "id": 1963,
                    "created_at": "2022-07-03T07:17:58.929Z",
                    "updated_at": "2022-07-03T07:17:58.929Z",
                    "name": "UV Protection",
                    "value": "100"
                }, {
                    "id": 1964,
                    "created_at": "2022-07-03T07:17:58.944Z",
                    "updated_at": "2022-07-03T07:17:58.944Z",
                    "name": "Case Type",
                    "value": "Pouch"
                }]
            }]
        }
    );

    useEffect(() => {
        fetchProducts("Home");
    }, []);

    async function fetchProducts(category_name) {
        let response = await fetch(`http://localhost:3001/products?category_name=${category_name}`);
        let result = await response.json();
        setProducts(result.data);
    }

    return (
        <div className={"d-flex align-items-center justify-content-center flex-column w-100 h-100 mt-5"}>
            <div className={"categories w-75"}>
                {products.parent_categories_hierarchy.map((category, index) =>
                    <div className={"d-flex"}>
                        <p className={"mb-0"} style={{cursor: "pointer"}} onClick={() => fetchProducts(category.name)}><u>{category.name}</u></p>
                        {index !== products.parent_categories_hierarchy.length - 1
                            ? <p className={"mb-0 mx-2"}> / </p>
                            : null}
                    </div>
                )}
            </div>
            <div className={"categories w-75"}>
                {products.sub_categories.map(sub_category => 
                    <button className={"category mr-3"} onClick={() => fetchProducts(sub_category.name)}>{sub_category.name}</button>
                )}
            </div>
            <div className={"d-grid products w-75 h-100"}>
                {products.products.map(product =>
                    <Product product={product} />
                )}
            </div>
        </div>
    )
}