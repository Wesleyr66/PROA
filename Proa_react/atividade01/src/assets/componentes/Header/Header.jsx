import Style from "./Header.module.css"
function Header(){
    return(
        <header className={Style.fundo}>
            <div>
                <p>Home</p>
                <p>Quem somos</p>
                <p>Instrumentos</p>
                <p>Endereço</p>
                <p>Contato</p>
            </div>
        </header>     
    )
}
export default Header