import Logo from '../../image/viagens.jpg'
import Lupa from '../../image/lupa.png'
import Carrinhodesign from '../../css/Header.module.css'
import {Link} from 'react-router-dom'
function Header() {

    return (
        <header className={Carrinhodesign.content}>
            <Link to='/'>
                <img src={Logo} alt="Logo" className={Carrinhodesign.logo} />
            </Link>
            <nav className={Carrinhodesign.menu}>
                <ul>
                    <Link to='/'>
                        <li>Home</li>
                    </Link>
                    <Link to='escocia'>
                        <li>Escócia</li>
                    </Link>
                    <Link to='canyon'>
                        <li>Gran Canyon</li>
                    </Link>
                    <Link to='china'>
                        <li>Muralhas da China</li>
                    </Link>
                    <Link to={'https://github.com/'} target="_blank">
                        <li>Aruba</li>
                    </Link>
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