import './App.css'
import Mundo from "./components/HelloWorld"
import Name from "./components/SayMyName"
import Pessoa from "./components/Pessoa"

function App() {
  const name = "maria";
  return (
    <>
    <Mundo/>
    <Name name={name}/>
    <Name name={"julio"}/>
    <Name name={"joca"}/>
    <Name name={"josi"}/>

    <Pessoa name="juba" idade="18" profissao="pedreira" foto="https://via.placeholder.com/300" />
    </>
  )
}

export default App
