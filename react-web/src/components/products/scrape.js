import React, { useEffect, useState, useRef } from "react";
import './scrape.css';

export default function Scrape() {
    const [url, setUrl] = useState("");
    let timeoutRef = useRef(null);

    function triggerTimeout() {
        clearTimeout(timeoutRef.current);
        timeoutRef.current = setTimeout(scrapeProduct, 3000);
    }
    
    async function scrapeProduct() {
        const requestOptions = {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ url: url })
        };

        let response = await fetch("http://localhost:3001/product/scrape", requestOptions);
        let result = await response.json();
    }

    return(
        <div className={"scrape"}>
            <input type="text" className={"scrape-url-input"} placeholder="url" value={url} onChange={event => setUrl(event.target.value)} />
            <button className={"scrape-submit-button rounded-pill"} onClick={triggerTimeout}>Scrape</button>
        </div>
    )
}