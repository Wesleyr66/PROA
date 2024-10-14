import Style from "./Footer.module.css"
import Face from '../../imagem/face.png'
import Insta from '../../imagem/insta.png'
import Whats from '../../imagem/whats.png'
function Footer(){
    return(
        <header className={Style.rodape}>
            <p>Nossa Loja - Instrumentos Musicais</p>
            <p>Estação agua branca</p>
            <p>São paulo</p>
            <div>
                <img src={Face} alt="" />
                <img src={Insta} alt="" />
                <img src={Whats} alt="" />
            </div>
        </header>     
    )
}
export default Footer