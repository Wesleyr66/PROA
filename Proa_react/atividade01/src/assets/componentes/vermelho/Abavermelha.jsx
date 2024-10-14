import Style from './Abavermelha.module.css'
import Asides from './Asides.jsx'
import imagem from '../../imagem/loja.jpg'
function Fundovermelho(){
    
    return(
        <section className={Style.vermelho}>
            <Asides estilo={{ display: 'none' }} title={"Textão Grandão"} texto={"Xique xique bahia abaixo da header"}/>
            <Asides img={imagem}/>
        </section>
    )
}

export default Fundovermelho