import './App.css'
import Header from '../src/assets/componentes/Header/Header.jsx'
import RedSection from '../src/assets/componentes/vermelho/RedSection.jsx'
import Azul from '../src/assets/componentes/azul/Fundo.jsx'
import Laranja from '../src/assets/componentes/laranja/Fundolaranja.jsx'
import Amarelo from '../src/assets/componentes/Amarelo/Fundoamarelo.jsx'
import Footer from '../src/assets/componentes/Footer/Footer.jsx'
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
function App() {

  return (
    <main>
      <Router>
        <Header />
          <Routes>
            <Route path="/" element={<RedSection />} />
            <Route path="azul" element={<Azul />} />
            <Route path="laranja" element={<Laranja />} />
            <Route path="amarelo" element={<Amarelo />} />
          </Routes>
        <Footer />
      </Router>
    </main>
  )
}

export default App
