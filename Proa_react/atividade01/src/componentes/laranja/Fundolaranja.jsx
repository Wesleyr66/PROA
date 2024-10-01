import Style from './Fundolaranja.module.css'
import Aba from './Abalaranja.jsx'
function Fundo(){
    return(
        <section className={Style.fundo}>
            <Aba/>
        </section>
    )
}

export default Fundo