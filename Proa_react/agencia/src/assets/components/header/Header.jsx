import Logo from '../../image/viagens.jpg'
import Lupa from '../../image/lupa.png'
import Carrinhodesign from '../../css/Header.module.css'
function Header() {

    return (
        <header className={Carrinhodesign.content}>
            <img src={Logo} alt="Logo" className={Carrinhodesign.logo} />
            <nav className={Carrinhodesign.menu}>
                <ul>
                    <li>Home</li>
                    <li>Escócia</li>
                    <li>Gran Canyon</li>
                    <li>Muralhas da China</li>
                    <li>Aruba</li>
                </ul>
            </nav>

            <div>
                <input type="search" className={Carrinhodesign.login} />
            </div>

            <img src={Lupa} alt="Lupa" className={Carrinhodesign.lupa} />
        </header>
    )
}

export default Header