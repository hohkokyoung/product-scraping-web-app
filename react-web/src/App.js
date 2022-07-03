import logo from './logo.svg';
import './App.css';
import Products from './pages/products/index.js';
import Scrape from './components/products/scrape.js';

function App() {
  return (
    <div className={"w-100 h-100 app"}>
      <Scrape />
      <Products />
    </div>
  );
}

export default App;
