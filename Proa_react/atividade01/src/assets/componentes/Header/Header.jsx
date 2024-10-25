import { Link } from "react-router-dom";
import Style from "./Header.module.css"
function Header() {
    return (
        <header className={Style.fundo}>
            <div>
                <p><Link to="/">Home</Link></p>
                <p><Link to="azul">Instrumentos</Link></p>
                <p><Link to="/">Quem somos</Link></p>
                <p><Link to="laranja">Endereço</Link></p>
                <p><Link to="amarelo">Contato</Link></p>
            </div>
        </header>
    )
}
export default Header