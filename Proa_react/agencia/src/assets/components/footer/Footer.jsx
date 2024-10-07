import Corzinha from '../../css/Footer.module.css'
import Zap from '../../image/whtas.png'
import Face from '../../image/face.jpg'
import Tiktok from '../../image/tiktok.png'
import Insta from '../../image/insta.jpg'

function Footer(){

    return(
        <footer className={Corzinha.corpo}>
            <h3>Siga-nos nas redes sociais</h3>
            <div className={Corzinha.icons}>
                <img src={Insta} alt="" />
                <img src={Face} alt="" />
                <img src={Tiktok} alt="" />
                <img src={Zap} alt="" />
            </div>
            <h3>Telefone de Contato - (11) 4002-8922</h3>
        </footer>
    )

}

export default Footer