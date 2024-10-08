import './App.css'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'
import Header from './assets/components/header/Header'
import Home from './assets/components/home/Home'
import Footer from './assets/components/footer/Footer'
import Escocia from './assets/components/escocia/Escocia'
import China from './assets/components/china/China'
import Aruda from './assets/components/aruda/Aruda'
import Canyon from './assets/components/canyon/Canyon'

function App() {

  return (
    <>
      <Router>

        <Header />

        <Routes>

          <Route path='/' element={<Home/>}/>
          <Route path='escocia' element={<Escocia/>}/>
          <Route path='china' element={<China />}/>
          <Route path='aruba' element={<Aruda />}/>
          <Route path='canyon' element={<Canyon />}/>

        </Routes>

        <Footer />

      </Router>
    </>
  )
}

export default App
