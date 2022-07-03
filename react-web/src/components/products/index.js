import React, { useEffect, useState } from "react";
import './index.css';

export default function Products({product}) {
    return (
        <div className={"product d-flex flex-column"}>
            <img className={"product-image"} src={product.images[0].url} />
            <h5 className={"product-title"}>{product.title}</h5>
            <div className={"d-flex mt-auto"}>
                <h6 className={"product-seller"}>{product.seller.name}</h6>
                <h4 className={"product-price"}>{product.price}</h4>
            </div>
            
        </div>
    )
}