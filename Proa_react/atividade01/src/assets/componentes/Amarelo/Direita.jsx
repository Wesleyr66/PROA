import Style from './Estilos.module.css'
import Face from '../../imagem/face.png'
import Insta from '../../imagem/insta.png'
import Whats from '../../imagem/whats.png'
function Quadrado(){
    return(
        <div className={Style.direita}>
            <p>Acesse nossas redes</p>
            <div>
                <img src={Face} alt="" />
                <img src={Insta} alt="" />
                <img src={Whats} alt="" />
            </div>
        </div>
    )
}

export default Quadrado