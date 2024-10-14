import Style from './Fundoamarelo.module.css'
import Esquerda from './Esquerda.jsx'
import Direita from './Direita.jsx'


function Fundo(){
    return(
        <section className={Style.fundo}>
            <Esquerda/>
            <Direita/>
        </section>
    )
}
export default Fundo